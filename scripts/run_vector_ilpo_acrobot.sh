#!/bin/bash

ngf=256

seed=0
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=100
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1000
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10000
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1234
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1337
python models/vector_ilpo.py --mode train --input_dir  /media/oli/LinuxData/datasets/acrobot/txt/ --n_actions 3 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_acrobot_large/acrobot_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
