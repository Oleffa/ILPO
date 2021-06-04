#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir  /media/veracrypt4/VAEToolbox/datasets/acrobot/txt/ --n_actions 3 --batch_size 32 --output_dir /media/veracrypt4/ILPO/workspace/2021_06_01_acrobot/acrobot_100/ilpo/ --max_epochs 100 --seed 100

