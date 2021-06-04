#!/bin/bash
python models/vector_policy.py --mode test --n_actions 3 --real_actions 3 --batch_size 32  --checkpoint /media/veracrypt4/ILPO/workspace/2021_06_01_acrobot/acrobot_100/ilpo --env Acrobot-v1 --exp_dir /media/veracrypt4/ILPO/workspace/2021_06_01_acrobot/acrobot_100/results --n_dims 6

