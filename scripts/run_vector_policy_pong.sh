#!/bin/bash
python models/vector_policy.py --mode test --n_actions 12 --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_06_03_pong/pong_1234/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_06_03_pong/pong_1234/results/ --n_dims 6 --policy_lr 0.002

