#!/bin/bash 
python models/image_ilpo.py --mode train --ngf 15 --ndf 15 --input_dir /media/oli/LinuxData/datasets/pong/pixel_ilpo --n_actions 12 --batch_size 100 --output_dir workspace/2021_06_21_pong_vis/pong_0/ilpo --max_epochs 10 --lr 0.0002 --seed 0 --checkpoint workspace/2021_06_21_pong_vis/pong_0/ilpo --save_freq 10

