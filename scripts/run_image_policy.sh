#!/bin/bash
python models/image_policy.py --mode test --ngf 15 --n_actions 5 --real_actions 7 --batch_size 32 --checkpoint /home/oli/workspace/ilpo/workspace/2021_08_24_coinrun/cr_0/ilpo --exp_dir /home/oli/workspace/ilpo/workspace/2021_08_24_coinrun/cr_0/results/ --policy_lr .001

