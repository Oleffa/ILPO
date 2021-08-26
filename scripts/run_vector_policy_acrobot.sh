#!/bin/bash
ngf=256

<<COMMENT
seed=0
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
seed=1
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
COMMENT

<<COMMENT
seed=10
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
seed=100
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
COMMENT

<<COMMENT
seed=1000
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
seed=10000
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
COMMENT

<<COMMENT
seed=1234
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
seed=1337
python models/vector_policy.py --mode test --n_actions 3 --ngf $ngf --real_actions 3 --batch_size 32  --checkpoint /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo --env Acrobot-v1 --exp_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/results --n_dims 6
COMMENT
