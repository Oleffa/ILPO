#!/bin/bash 
#python models/image_ilpo.py --mode train --ngf 15 --input_dir /media/oli/LinuxData/datasets/coinrun/easy/ilpo/ --n_actions 5 --real_actions 7 --batch_size 32 --output_dir workspace/2021_08_26_coinrun_short/cr_867/ilpo --max_epochs 5 --lr 0.0002 --seed 867 --save_freq 100
#python models/image_ilpo.py --mode train --ngf 15 --input_dir /media/oli/LinuxData/datasets/coinrun/easy/ilpo/ --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_coinrun_short/cr_867/ilpo --n_actions 5 --real_actions 7 --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_coinrun_short/cr_867/ilpo --max_epochs 5 --lr 0.0002 --seed 867 --save_freq 100

#python models/image_ilpo.py --mode train --ngf 15 --input_dir /media/oli/LinuxData/datasets/pong/001_pixel/ilpo/ --n_actions 3 --real_actions 3 --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_vis_short/pong_1/ilpo --max_epochs 1 --lr 0.0002 --seed 1 --save_freq 100
python models/image_ilpo.py --mode train --ngf 15 --input_dir /media/oli/LinuxData/datasets/pong/001_pixel/ilpo/ --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_vis_short/pong_1/ilpo --n_actions 3 --real_actions 3 --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_vis_short/pong_1/ilpo --max_epochs 10 --lr 0.0002 --seed 1 --save_freq 100

