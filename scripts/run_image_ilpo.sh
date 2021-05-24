#!/bin/bash
python models/image_ilpo.py --mode train --ngf 15 --ndf 15 --input_dir /media/oli/LinuxData/VAEToolbox/datasets/pong/pixel_ilpo --n_actions 3 --batch_size 8 --output_dir 2021_05_21_pong_vis/pong_0/ilpo --max_epochs 100 --lr 0.0002 --seed 0

