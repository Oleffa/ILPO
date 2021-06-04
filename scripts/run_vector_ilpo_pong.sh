#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir /media/veracrypt4/VAEToolbox/datasets/pong/vector/txt/ --n_actions 12 --batch_size 32 --output_dir /media/veracrypt4/ILPO/workspace/2021_06_01_pong/pong_867/ilpo/ --max_epochs 100 --lr 0.0002 --seed 867

