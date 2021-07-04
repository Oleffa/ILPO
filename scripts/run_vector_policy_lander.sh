#!/bin/bash
python models/vector_policy.py --mode test --n_actions 4 --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_06_07_lander/ll_100/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_06_07_lander/ll_100/results/ --n_dims 8

