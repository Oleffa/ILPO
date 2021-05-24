#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/VAEToolbox/datasets/pong/vector/txt/ --n_actions 12 --batch_size 32 --output_dir workspace/2021_05_21_pong/pong_20000/ilpo/ --max_epochs 100 --seed 20000 --lr 0.0002

