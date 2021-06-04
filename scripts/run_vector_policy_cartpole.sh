#!/bin/bash
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --batch_size 32  --checkpoint /media/veracrypt4/ILPO/workspace/2021_06_01_cartpole/cartpole_100/ilpo --env CartPole-v1 --exp_dir /media/veracrypt4/ILPO/workspace/2021_06_01_cartpole/cartpole_100/results/ --n_dims 4

