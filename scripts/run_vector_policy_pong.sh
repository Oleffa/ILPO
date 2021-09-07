#!/bin/bash


<<COMMENT
ngf=256
seed=0
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=100
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1234
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1337
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=420
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=69
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=655
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=867
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=187
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=257
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
COMMENT

<<COMMENT
ngf=256
seed=0
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=100
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1234
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1337
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=420
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=69
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=655
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=867
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=187
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=257
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
COMMENT

<<COMMENT
ngf=512
seed=0
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=100
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1234
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1337
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=420
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=69
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=655
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=867
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=187
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=257
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_simpleAI/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
COMMENT

ngf=512
<<COMMENT
seed=0
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=100
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=10000
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1234
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=1337
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=420
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
COMMENT
seed=69
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=655
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=867
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=187
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
seed=257
python models/vector_policy.py --mode test --n_actions 12 --ngf $ngf --real_actions 3 --batch_size 32 --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/ilpo --env WimblepongVectorSimpleAI-v0 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_large_RLAgent/pong_$seed/results/ --n_dims 6 --policy_lr 0.002
