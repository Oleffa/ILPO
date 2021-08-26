#!/bin/bash

<<COMMENT
ngf=64
seed=0
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
seed=1
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
seed=10
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
seed=100
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
COMMENT

<<COMMENT
ngf=64
seed=1000
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
seed=10000
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
seed=1234
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
seed=1337
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/results/ --n_dims 4
COMMENT

<<COMMENT
ngf=256
seed=0
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
seed=1
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
seed=10
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
seed=100
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
COMMENT

ngf=256
seed=1000
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
seed=1000
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
seed=1234
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
seed=1337
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --ngf $ngf --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo --env CartPole-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/results/ --n_dims 4
