#!/bin/bash
python models/vector_policy.py --mode test --n_actions 12 --real_actions 3 --batch_size 32 --checkpoint /media/veracrypt4/ILPO/workspace/2021_06_01_pong/pong_867/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/veracrypt4/ILPO/workspace/2021_06_01_pong/pong_867/results/ --n_dims 6 --policy_lr 0.002

