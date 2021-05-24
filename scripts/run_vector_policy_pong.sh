#!/bin/bash
python models/vector_policy.py --mode test --n_actions 12 --real_actions 3 --batch_size 32 --checkpoint workspace/2021_05_21_pong/pong_20000/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir workspace/2021_05_21_pong/pong_20000/results/ --n_dims 6 --policy_lr 0.002

