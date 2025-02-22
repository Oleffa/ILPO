#!/bin/bash
ngf=64

seed=0
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=10
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=100
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=10000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1234
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1337
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_small/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed

ngf=256
seed=0
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=10
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=100
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=10000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1234
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
seed=1337
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/ --n_actions 2 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_cartpole_large/cartpole_$seed/ilpo/ --max_epochs 100 --seed $seed
