#!/bin/bash
<<COMMENT
ngf=256
seed=0
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=100
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1234
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1337
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=420
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=69
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=655
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=867
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=187
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=257
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
COMMENT

<<COMMENT
ngf=512
seed=0
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=100
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1234
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1337
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=420
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=69
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=655
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=867
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=187
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=257
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/001_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
COMMENT

<<COMMENT
ngf=256
seed=0
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=100
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1234
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1337
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=420
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=69
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=655
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=867
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=187
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=257
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
COMMENT

<<COMMENT
ngf=512
seed=0
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=100
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=10000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1234
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=1337
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=420
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=69
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=655
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=867
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=187
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
seed=257
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf $ngf --batch_size 32 --output_dir /media/oli/LinuxData/ILPO/workspace/2021_08_26_pong_normal_simpleAI/pong_$seed/ilpo/ --max_epochs 100 --lr 0.0002 --seed $seed
COMMENT
