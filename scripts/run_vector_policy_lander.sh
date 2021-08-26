#!/bin/bash
<<COMMENT
python models/vector_policy.py --mode test --n_actions 4 --ngf 16 --real_actions 4 --batch_size 32  --checkpoint workspace/2021_08_24_lander/ll_0/ilpo --env LunarLander-v2 --exp_dir workspace/2021_08_24_lander/ll_0/results/ --n_dims 8
python models/vector_policy.py --mode test --n_actions 4 --ngf 16 --real_actions 4 --batch_size 32  --checkpoint workspace/2021_08_24_lander/ll_1/ilpo --env LunarLander-v2 --exp_dir workspace/2021_08_24_lander/ll_1/results/ --n_dims 8
COMMENT
python models/vector_policy.py --mode test --n_actions 4 --ngf 16 --real_actions 4 --batch_size 32  --checkpoint workspace/2021_08_24_lander/ll_10/ilpo --env LunarLander-v2 --exp_dir workspace/2021_08_24_lander/ll_10/results/ --n_dims 8
python models/vector_policy.py --mode test --n_actions 4 --ngf 16 --real_actions 4 --batch_size 32  --checkpoint workspace/2021_08_24_lander/ll_100/ilpo --env LunarLander-v2 --exp_dir workspace/2021_08_24_lander/ll_100/results/ --n_dims 8
