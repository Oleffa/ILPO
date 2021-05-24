#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/VAEToolbox/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --batch_size 32 --output_dir workspace/2021_05_21_cartpole/cartpole_10000/ilpo/ --max_epochs 100 --seed 10000

