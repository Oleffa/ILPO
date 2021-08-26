#!/bin/bash 
python models/image_ilpo.py --mode train --ngf 15 --input_dir /media/oli/LinuxData/datasets/coinrun/easy/ilpo/ --checkpoint workspace/2021_08_24_coinrun/cr_1/ilpo --n_actions 5 --real_actions 7 --batch_size 32 --output_dir workspace/2021_08_24_coinrun/cr_1/ilpo --max_epochs 3 --lr 0.0002 --seed 1 --save_freq 100
#python models/image_ilpo.py --mode train --ngf 15 --ndf 15 --input_dir /media/oli/LinuxData/datasets/pong/002_pixel/ilpo/ --n_actions 12 --real_actions 3 --batch_size 32 --output_dir workspace/2021_08_23_pong_vis/pong_0/ilpo --max_epochs 20 --lr 0.0002 --seed 0 --save_freq 1500

