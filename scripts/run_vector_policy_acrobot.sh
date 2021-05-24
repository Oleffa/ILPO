#!/bin/bash
python models/vector_policy.py --mode test --n_actions 3 --real_actions 3 --batch_size 32  --checkpoint workspace/2021_05_21_acrobot/acrobot_10000/ilpo --env Acrobot-v1 --exp_dir workspace/2021_05_21_acrobot/acrobot_10000/results --n_dims 6

