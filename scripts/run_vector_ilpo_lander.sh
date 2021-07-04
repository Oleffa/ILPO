#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/lunarlander/txt/ --n_actions 4 --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_06_07_lander/ll_100/ilpo/ --max_epochs 100 --seed 100

