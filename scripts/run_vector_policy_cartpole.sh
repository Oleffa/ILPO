#!/bin/bash
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --batch_size 32  --checkpoint workspace/2021_05_21_cartpole/cartpole_0/ilpo --env CartPole-v1 --exp_dir workspace/2021_05_21_cartpole/cartpole_0/results/ --n_dims 4

