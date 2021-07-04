#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_06_01_cartpole/cartpole_8/ilpo/ --max_epochs 100 --seed 100

