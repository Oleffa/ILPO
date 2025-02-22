"""ILPO network for images."""
from ilpo import ILPO
from utils import *
import sys
sys.path.append(".")

CROP_SIZE = 128

class ImageILPO(ILPO):
    def process_inputs(self, inputs):
        inputs = inputs / 255.
        inputs = tf.image.resize_images(inputs, [CROP_SIZE, CROP_SIZE])
        inputs = preprocess(inputs)

        return inputs

    def load_examples(self):
        if args.input_dir is None or not os.path.exists(args.input_dir):
            raise Exception("input_dir does not exist")

        input_paths = glob.glob(os.path.join(args.input_dir, "*.png"))
        decode = tf.image.decode_png

        if len(input_paths) == 0:
            raise Exception("input_dir contains no image files")

        def get_name(path):
            name, _ = os.path.splitext(os.path.basename(path))
            return name

        # if the image names are numbers, sort by the value rather than asciibetically
        # having sorted inputs means that the outputs are sorted in test mode
        if all(get_name(path).isdigit() for path in input_paths):
            input_paths = sorted(input_paths, key=lambda path: int(get_name(path)))
        else:
            input_paths = sorted(input_paths)

        with tf.name_scope("load_images"):
            path_queue = tf.train.string_input_producer(input_paths, shuffle=True)
            reader = tf.WholeFileReader()
            paths, contents = reader.read(path_queue)
            raw_input = decode(contents, channels=3)
            raw_input = tf.image.convert_image_dtype(raw_input, dtype=tf.float32)

            assertion = tf.assert_equal(tf.shape(raw_input)[2], 3, message="image does not have 3 channels")
            with tf.control_dependencies([assertion]):
                raw_input = tf.identity(raw_input)

            raw_input = tf.image.resize_images(raw_input, [CROP_SIZE, CROP_SIZE*2])
            raw_input.set_shape([CROP_SIZE, CROP_SIZE*2, 3])

            # break apart image pair and move to range [-1, 1]
            width = CROP_SIZE
            a_images = preprocess(raw_input[:,0:width,:])
            b_images = preprocess(raw_input[:,width:width*2,:])

        if args.which_direction == "AtoB":
            inputs, targets = [a_images, b_images]
        elif a.which_direction == "BtoA":
            inputs, targets = [b_images, a_images]
        else:
            raise Exception("invalid direction")

        # synchronize seed for image operations so that we do the same operations to both
        # input and output images
        seed = random.randint(0, 2**31 - 1)
        def transform(image):
            r = image
            if args.flip:
                r = tf.image.random_flip_left_right(r, seed=seed)

            r.set_shape([CROP_SIZE, CROP_SIZE, 3])

            return r

        with tf.name_scope("input_images"):
            input_images = transform(inputs)

        with tf.name_scope("target_images"):
            target_images = transform(targets)

        paths_batch, inputs_batch, targets_batch = tf.train.batch(
            [paths, input_images, target_images],
            batch_size=args.batch_size,
            num_threads=1,
            capacity=500000)

        steps_per_epoch = int(math.ceil(len(input_paths) / args.batch_size))

        return Examples(
            paths=paths_batch,
            inputs=inputs_batch,
            targets=targets_batch,
            count=len(input_paths),
            steps_per_epoch=steps_per_epoch,
        )

    def create_encoder(self, state):
        """Creates state embedding."""

        layers = []

        # encoder_1: [batch, 256, 256, in_channels] => [batch, 128, 128, ngf]
        with tf.variable_scope("encoder_1"):
            output = conv(state, args.ngf, stride=2) #batch_input, out_channels, stride
            layers.append(output)

        layer_specs = [
            args.ngf * 2, # encoder_2: [batch, 128, 128, ngf] => [batch, 64, 64, ngf * 2]
            args.ngf * 4, # encoder_3: [batch, 64, 64, ngf * 2] => [batch, 32, 32, ngf * 4]
            args.ngf * 8, # encoder_4: [batch, 32, 32, ngf * 4] => [batch, 16, 16, ngf * 8]
            args.ngf * 8, # encoder_5: [batch, 16, 16, ngf * 8] => [batch, 8, 8, ngf * 8]
            args.ngf * 8, # encoder_6: [batch, 8, 8, ngf * 8] => [batch, 4, 4, ngf * 8]
            args.ngf * 8, # encoder_7: [batch, 4, 4, ngf * 8] => [batch, 2, 2, ngf * 8]
        ]

        for out_channels in layer_specs:
            with tf.variable_scope("encoder_%d" % (len(layers) + 1)):
                rectified = lrelu(layers[-1], 0.2)
                # [batch, in_height, in_width, in_channels] => [batch, in_height/2, in_width/2, out_channels]
                convolved = conv(rectified, out_channels, stride=2)
                layers.append(convolved)

        return layers

    def create_generator(self, layers, generator_outputs_channels):
        """Returns next state prediction given a combined state and latent action."""

        s_t_layers = list(layers)
        layer_specs = [
            (args.ngf * 8, 0.5),   # decoder_7: [batch, 2, 2, ngf * 8 * 2] => [batch, 4, 4, ngf * 8 * 2]
            (args.ngf * 8, 0.5),   # decoder_6: [batch, 4, 4, ngf * 8 * 2] => [batch, 8, 8, ngf * 8 * 2]
            (args.ngf * 8, 0.0),   # decoder_5: [batch, 8, 8, ngf * 8 * 2] => [batch, 16, 16, ngf * 8 * 2]
            (args.ngf * 4, 0.0),   # decoder_4: [batch, 16, 16, ngf * 8 * 2] => [batch, 32, 32, ngf * 4 * 2]
            (args.ngf * 2, 0.0),   # decoder_3: [batch, 32, 32, ngf * 4 * 2] => [batch, 64, 64, ngf * 2 * 2]
            (args.ngf, 0.0),       # decoder_2: [batch, 64, 64, ngf * 2 * 2] => [batch, 128, 128, ngf * 2]
        ]

        num_encoder_layers = len(s_t_layers)
        for decoder_layer, (out_channels, dropout) in enumerate(layer_specs):
            skip_layer = num_encoder_layers - decoder_layer - 1
            with tf.variable_scope("decoder_%d" % (skip_layer + 1)):
                if decoder_layer == 0:
                    # first decoder layer doesn't have skip connections
                    # since it is directly connected to the skip_layer
                    input = s_t_layers[-1]
                else:
                    input = tf.concat([s_t_layers[-1], s_t_layers[skip_layer]], axis=3)

                rectified = lrelu(input, .2)
                # [batch, in_height, in_width, in_channels] => [batch, in_height*2, in_width*2, out_channels]
                output = deconv(rectified, out_channels)

                s_t_layers.append(output)

        # decoder_1: [batch, 128, 128, ngf * 2] => [batch, 256, 256, generator_outputs_channels]
        with tf.variable_scope("decoder_1"):
            input = tf.concat([s_t_layers[-1], s_t_layers[0]], axis=3)
            rectified = lrelu(input, .2)
            output = deconv(rectified, generator_outputs_channels)
            s_t_layers.append(output)

        return s_t_layers[-1]


    def train_examples(self, examples):
        print("examples count = %d" % examples.count)

        # inputs and targets are [batch_size, height, width, channels]
        model = self.create_model(examples.inputs, examples.targets)

        inputs = deprocess(examples.inputs)
        targets = deprocess(examples.targets)
        expectation = deprocess(model.expectation)
        min_output = deprocess(model.min_output)

        def convert(image):
            return tf.image.convert_image_dtype(image, dtype=tf.uint8, saturate=True)

        # reverse any processing on images so they can be written to disk or displayed to user
        with tf.name_scope("convert_inputs"):
            converted_inputs = convert(inputs)

        with tf.name_scope("convert_targets"):
            converted_targets = convert(targets)

        with tf.name_scope("convert_expectation"):
            converted_expectation = convert(expectation)

        with tf.name_scope("convert_min_output"):
            converted_min_output = convert(min_output)

        with tf.name_scope("encode_images"):
            display_fetches = {
                "paths": examples.paths,
                "inputs": tf.map_fn(tf.image.encode_png, converted_inputs, dtype=tf.string, name="input_pngs"),
                "targets": tf.map_fn(tf.image.encode_png, converted_targets, dtype=tf.string, name="target_pngs"),
                "expected_outputs": tf.map_fn(tf.image.encode_png, converted_expectation, dtype=tf.string, name="expected_output_pngs"),
                "min_outputs": tf.map_fn(tf.image.encode_png, converted_min_output, dtype=tf.string,
                                              name="min_output_pngs"),

            }

        # summaries
        with tf.name_scope("inputs_summary"):
            tf.summary.image("inputs", converted_inputs, 3)

        with tf.name_scope("targets_summary"):
            tf.summary.image("targets", converted_targets)

        with tf.name_scope("outputs_summary_expected"):
            tf.summary.image("outputs_expected", converted_expectation, 3)

        with tf.name_scope("outputs_summary_min"):
            tf.summary.image("outputs_min", converted_min_output, 3)

        for i in range(0, len(model.outputs)):
            with tf.name_scope("outputs_" + str(i)):
                tf.summary.image("outputs_" + str(i), model.outputs[i], 3)

        summaries = tf.summary.image("merged", tf.concat(
            [converted_inputs, converted_targets, converted_expectation, converted_min_output], 1), 3)

        tf.summary.scalar("generator_loss_L1", model.gen_loss_L1)

        for var in tf.trainable_variables():
            tf.summary.histogram(var.op.name + "/values", var)

        for grad, var in model.gen_grads_and_vars:
            tf.summary.histogram(var.op.name + "/gradients", grad)

        with tf.name_scope("parameter_count"):
            parameter_count = tf.reduce_sum([tf.reduce_prod(tf.shape(v)) for v in tf.trainable_variables()])

        saver = tf.train.Saver(max_to_keep=1)

        logdir = args.output_dir if (args.trace_freq > 0 or args.summary_freq > 0) else None
        sv = tf.train.Supervisor(logdir=logdir, save_summaries_secs=0, saver=None)
        config = tf.ConfigProto()
        config.gpu_options.allow_growth = True

        with sv.managed_session(config=config) as sess:
            print("parameter_count =", sess.run(parameter_count))

            if args.checkpoint is not None:
                print("loading model from checkpoint")
                checkpoint = tf.train.latest_checkpoint(args.checkpoint)
                saver.restore(sess, checkpoint)

            max_steps = 2 ** 32
            if args.max_epochs is not None:
                max_steps = examples.steps_per_epoch * args.max_epochs
            if args.max_steps is not None:
                max_steps = args.max_steps

            summary = sess.run(summaries)
            sv.summary_writer.add_summary(summary)

            start = time.time()

            for step in range(max_steps):
                def should(freq):
                    return freq > 0 and ((step + 1) % freq == 0 or step == max_steps - 1)

                options = None
                run_metadata = None
                if should(args.trace_freq):
                    options = tf.RunOptions(trace_level=tf.RunOptions.FULL_TRACE)
                    run_metadata = tf.RunMetadata()

                fetches = {
                    "train": model.train,
                    "global_step": sv.global_step,
                }

                if should(args.progress_freq):
                    fetches["gen_loss_L1"] = model.gen_loss_L1

                if should(args.summary_freq):
                    fetches["summary"] = sv.summary_op

                if should(args.display_freq):
                    fetches["display"] = display_fetches

                results = sess.run(fetches, options=options, run_metadata=run_metadata)

                if should(args.summary_freq):
                    print("recording summary")
                    sv.summary_writer.add_summary(results["summary"], results["global_step"])

                if should(args.display_freq):
                    print("saving display images")
                    filesets = save_images(results["display"], step=results["global_step"])
                    append_index(filesets, step=True)

                if should(args.trace_freq):
                    print("recording trace")
                    sv.summary_writer.add_run_metadata(run_metadata, "step_%d" % results["global_step"])

                if should(args.progress_freq):
                    # global_step will have the correct step count if we resume from a checkpoint
                    train_epoch = math.ceil(results["global_step"] / examples.steps_per_epoch)
                    train_step = (results["global_step"] - 1) % examples.steps_per_epoch + 1
                    rate = (step + 1) * args.batch_size / (time.time() - start)
                    remaining = (max_steps - step) * args.batch_size / rate
                    print("progress  epoch %d  step %d  image/sec %0.1f  remaining %dm" % (
                    train_epoch, train_step, rate, remaining / 60))
                    print("gen_loss_L1", results["gen_loss_L1"])

                if should(args.save_freq):
                    print("saving model")
                    saver.save(sess, os.path.join(args.output_dir, "model"), global_step=sv.global_step)

                if sv.should_stop():
                    break
def main():
    model = ImageILPO()
    model.run()

if __name__ == "__main__":
    main()

