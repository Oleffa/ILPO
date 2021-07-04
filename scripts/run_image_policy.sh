#!/bin/bash
python models/image_policy.py --mode test --ngf 15 --n_actions 12 --batch_size 32 --checkpoint workspace/2021_06_21_pong_vis/pong_0/ilpo --exp_dir workspace/2021_06_21_pong_vis/pong_0/results/ --env WimblepongVisualSimpleAI-v0 --policy_lr .0009

