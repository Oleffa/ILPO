"""Runs a trained ILPO policy in an online manner and concurrently fixes action inconsistencies."""
from utils import *
from vector_ilpo import VectorILPO
from collections import deque
import gym
import os
import random
import sys
sys.path.append('/media/oli/LinuxData/datasets/pong')
import wimblepong

sess = tf.Session()

class Policy(VectorILPO):
    def __init__(self, sess, shape,verbose=False, use_encoding=False, experiment=False, exp_writer=None):
        """Initializes the ILPO policy network."""

        self.sess = sess
        self.verbose = verbose
        self.use_encoding = use_encoding
        self.inputs = tf.placeholder("float", shape)
        self.targets = tf.placeholder("float", shape)
        self.state = tf.placeholder("float", shape)
        self.action = tf.placeholder("int32", [None])
        self.fake_action = tf.placeholder("int32", [None])
        self.reward = tf.placeholder("float", [None])
        self.experiment = experiment
        self.exp_writer = exp_writer

        processed_inputs = self.process_inputs(self.inputs)
        processed_targets = self.process_inputs(self.targets)
        processed_state = self.process_inputs(self.state)

        self.model = self.create_model(processed_inputs, processed_targets)

        self.action_label, loss = self.action_remap_net(self.state, self.action, self.fake_action)

        self.loss_summary = tf.summary.scalar("policy_loss", tf.squeeze(loss))

        logdir = args.exp_dir + "/policy_logs"
        self.reward_summary = tf.summary.scalar("reward", self.reward[0])
        self.summary_writer = tf.summary.FileWriter(logdir, graph=tf.get_default_graph())

        self.train_step = tf.train.AdamOptimizer(args.policy_lr).minimize(loss)

        ilpo_var_list = []
        policy_var_list = []

        # Restore ILPO params and initialize policy params.
        for var in tf.get_collection(tf.GraphKeys.GLOBAL_VARIABLES):
            if "ilpo" in var.name:
                ilpo_var_list.append(var)
            else:
                policy_var_list.append(var)


        saver = tf.train.Saver(var_list=ilpo_var_list)
        checkpoint = tf.train.latest_checkpoint(args.checkpoint)
        saver.restore(sess, checkpoint)
        sess.run(tf.variables_initializer(policy_var_list))

        self.state_encoding = self.encode(processed_inputs)

    def min_action(self, state, action, next_state):
        """Find the minimum action for training."""

        # Given state and action, find the closest predicted next state to the real one.
        # Use the real action as a training label for remapping the action label.
        deprocessed_outputs = [output for output in self.model.outputs]
        fake_next_states = sess.run(deprocessed_outputs, feed_dict={self.inputs: [state]})

        if self.use_encoding:
            next_state_encoding = sess.run(self.state_encoding, feed_dict={self.inputs: [next_state]})[0]
            fake_state_encodings = [sess.run(
                self.state_encoding,
                feed_dict={self.inputs: fake_next_state})[0] for fake_next_state in fake_next_states]
            distances = [np.linalg.norm(next_state_encoding - fake_state_encoding) for fake_state_encoding in fake_state_encodings]

        else:
            distances = [np.linalg.norm(next_state - fake_next_state) for fake_next_state in fake_next_states]
        min_action = np.argmin(distances)
        min_state = fake_next_states[min_action]

        if self.verbose:
            print("Next state", next_state)
            print("Fake states", fake_next_states)
            print("Distances", distances)
            print("Action", action)
            print("Min state", min_state)
            print("\n")

        return min_action

    def action_remap_net(self, state, action, fake_action):
        """Network for remapping incorrect action labels."""

        with tf.variable_scope("action_remap"):
            # Get Embedding lrelu(E)
            fake_state_encoding = lrelu(slim.flatten(self.create_encoder(state)[-1]), .2)
            # self.fake_state_encoding 
            # One hot encode z_min
            fake_action_one_hot = tf.one_hot(fake_action, args.n_actions)
            # Encode z_min -> lrelu
            fake_action_one_hot = lrelu(fully_connected(fake_action_one_hot, int(fake_state_encoding.shape[-1])), .2)
            real_action_one_hot = tf.one_hot(action, args.real_actions, dtype="int32")
            fake_state_action = tf.concat([fake_state_encoding, fake_action_one_hot], axis=-1)
            # This is pretty much the mapping from z space to true actions
            # =======  remapping_network ======
            prediction = lrelu(fully_connected(fake_state_action, 64), .2)
            prediction = lrelu(fully_connected(prediction, 32), .2)
            prediction = fully_connected(prediction, args.real_actions)
            # ======= L_map ========
            loss = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(labels=real_action_one_hot, logits=prediction))

            return tf.nn.softmax(prediction), loss

    def P(self, state):
        """Returns the next_state probabilities for a state."""
        # P is basically running the latent policy of the ilpo model to get the latent action
        return sess.run(self.model.actions, feed_dict={self.inputs: [state]})[0]

    def greedy(self, state):
        """Returns the greedy remapped action for a state."""
        p_state = self.P(state)
        # Select the argmax, the most likely latent action
        action = np.argmax(p_state)
        # Run it through the remapping network with embedded state and action
        remapped_action = self.sess.run(self.action_label, feed_dict={self.state: [state], self.fake_action: [action]})[0]

        if self.verbose:
            print(remapped_action)

        return np.argmax(remapped_action)

    def eval_state_space(self, game, t):
        steps = 50000
        i = 0
        outfile = open('./lander_states_{}.txt'.format(t), 'w')
        #outfile = open('./pong_states_random.txt'.format(t), 'w')
        while i < steps:
            obs = game.reset()
            terminal = False
            while not terminal:
                state_1 = obs
                action = self.greedy(obs)
                #action = game.action_space.sample()
                #action = 0
                obs, reward, terminal, _ = game.step(action)
                state_2 = obs
                #Write
                to_write = '['
                for w in state_1:
                    to_write += str(w) + ','
                to_write = to_write[:-1]
                to_write += ']'

                outfile.write(to_write)
                outfile.write(" ")
                to_write = '['

                for w in state_2:
                    to_write += str(w) + ','
                to_write = to_write[:-1]
                to_write += ']'

                outfile.write(to_write)
                outfile.write("\n")

                i += 1
                if i >= steps:
                    terminal = True
        outfile.close()
    """
    def eval_policy(self, game, t):
        #total_reward = 0
        games = 1
        print("Evaluating policy at t={} with {} games".format(t, games))
        total_reward = 0

        for g in range(games):
            obs = game.reset()
            terminal = False
            while not terminal:
                #game.render()
                action = self.greedy(obs)
                obs, reward, terminal, _ = game.step(action)
                total_reward += reward
        total_reward /= games
        print("reward: ", total_reward)

        reward_summary = sess.run([self.reward_summary], feed_dict={self.reward: [total_reward]})[0]
        self.summary_writer.add_summary(reward_summary, t)
        self.exp_writer.write(str(t) + "," + str(total_reward) + "\n")
    """
    def eval_policy(self, game, t):
        games = 1
        print("Evaluating policy at t={} with {} games".format(t, games))
        wins = 0

        for g in range(games):
            obs = game.reset()
            terminal = False
            while not terminal:
                #game.render()
                action = self.greedy(obs)
                obs, reward, terminal, _ = game.step(action)
                if reward == 10:
                    wins += 1
        total_reward = wins / games
        print("reward: ", total_reward)

        reward_summary = sess.run([self.reward_summary], feed_dict={self.reward: [total_reward]})[0]
        self.summary_writer.add_summary(reward_summary, t)
        self.exp_writer.write(str(t) + "," + str(total_reward) + "\n")

    def run_policy(self, seed):
        """Run the policy."""

        game = gym.make(args.env)
        game.seed(seed)

        obs = game.reset()

        terminal = False
        D = deque()

        # Lunar Lander, pong
        for t in range(0, 1500):
        # Acrobot, cartpole
        #for t in range(0, 500):
            #print(t)
            #game.render()

            # Test empty dequeu after reaching batchsize
            if len(D) > 50000:
                D.popleft()

            if terminal:
                obs = game.reset()
                steps = 0.

            prev_obs = np.copy(obs)

            if np.random.uniform(0,1) < .8:
                action = self.greedy(obs)
            else:
                action = game.action_space.sample()

            obs, reward, terminal, _ = game.step(action)
            # This gives the z that leads to the most similar next state
            fake_action = self.min_action(prev_obs, action, obs)

            D.append((prev_obs, action, fake_action))

            if len(D) >= args.batch_size:
                minibatch = random.sample(D, args.batch_size)
                obs_batch = [d[0] for d in minibatch]
                action_batch = [d[1] for d in minibatch]
                fake_action_batch = [d[2] for d in minibatch]

                _, loss_summary = sess.run([self.train_step, self.loss_summary], feed_dict={
                    self.state: obs_batch,
                    self.action: action_batch,
                    self.fake_action: fake_action_batch})

                self.summary_writer.add_summary(loss_summary, t)

            # Acrobot, cartpole
            #if t % 10 == 0:
            # Pong
            if t % 50 == 0:
            # Lander
            #if t % 100 == 0:
                self.eval_policy(game, t)
                terminal = True
                #self.eval_state_space(game, t)
        #exit()

if not os.path.exists(args.exp_dir):
    os.makedirs(args.exp_dir)

for exp in range(0, 50):
    config = tf.ConfigProto()
    config.gpu_options.allow_growth = True
    print("Running experiment", exp)
    tf.reset_default_graph()
    exp_writer = open(args.exp_dir + "/" + str(exp) + ".csv", "w")

    sess = tf.Session(config=config)

    np.random.seed(exp)
    tf.set_random_seed(exp)
    random.seed(exp)

    with sess.as_default():
        ilpo = Policy(sess=sess, shape=[None, args.n_dims], use_encoding=False, verbose=False, experiment=False, exp_writer=exp_writer)
        ilpo.run_policy(seed=exp)
        exp_writer.close()
