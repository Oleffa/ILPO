#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir /media/veracrypt4/VAEToolbox/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --batch_size 32 --output_dir /media/veracrypt4/ILPO/workspace/2021_06_01_cartpole/cartpole_100/ilpo/ --max_epochs 100 --seed 100

