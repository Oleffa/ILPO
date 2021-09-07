#!/bin/bash
python models/image_policy.py --mode test --ngf 15 --n_actions 5 --real_actions 7 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_coinrun_short/cr_1337/ilpo --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_coinrun_short/cr_1337/results/ --policy_lr .001

