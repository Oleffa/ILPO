#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/VAEToolbox/datasets/acrobot/txt/ --n_actions 3 --batch_size 32 --output_dir workspace/2021_05_21_acrobot/acrobot_10000/ilpo/ --max_epochs 100 --seed 10000

