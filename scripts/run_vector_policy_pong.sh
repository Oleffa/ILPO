#!/bin/bash
python models/vector_policy.py --mode test --n_actions 12 --ngf 16 --real_actions 3 --batch_size 32 --checkpoint /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_1/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_1/results/ --n_dims 6 --policy_lr 0.002
<<COMMENT

867
69
187
1337
10000
100
1
COMMENT
