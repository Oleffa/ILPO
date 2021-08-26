#!/bin/bash
<<COMMENT
ngf=64
seed=0
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
seed=1
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
seed=10
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
seed=100
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
seed=1000
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
seed=10000
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
seed=1234
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
seed=1337
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_small/ll_$seed/results/ --n_dims 8
COMMENT

<<COMMENT
ngf=256
seed=0
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
seed=1
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
seed=10
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
seed=100
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
seed=1000
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
seed=10000
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
seed=1234
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
seed=1337
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_normal/ll_$seed/results/ --n_dims 8
COMMENT

<<COMMENT
ngf=512
seed=0
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
seed=1
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
seed=10
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
seed=100
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
seed=1000
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
seed=10000
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
seed=1234
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
seed=1337
python models/vector_policy.py --mode test --n_actions 8 --ngf $ngf --real_actions 4 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/ilpo --env LunarLander-v2 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_lander_large/ll_$seed/results/ --n_dims 8
COMMENT
