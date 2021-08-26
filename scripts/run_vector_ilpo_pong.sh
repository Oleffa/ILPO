#!/bin/bash
<<COMMENT
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_0/ilpo/ --max_epochs 100 --lr 0.0002 --seed 0
COMMENT
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_1/ilpo/ --max_epochs 100 --lr 0.0002 --seed 1
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_10/ilpo/ --max_epochs 100 --lr 0.0002 --seed 10
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_100/ilpo/ --max_epochs 100 --lr 0.0002 --seed 100
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_1000/ilpo/ --max_epochs 100 --lr 0.0002 --seed 1000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_10000/ilpo/ --max_epochs 100 --lr 0.0002 --seed 10000
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_1234/ilpo/ --max_epochs 100 --lr 0.0002 --seed 1234
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_1337/ilpo/ --max_epochs 100 --lr 0.0002 --seed 1337

<<COMMENT
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_420/ilpo/ --max_epochs 100 --lr 0.0002 --seed 420
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_69/ilpo/ --max_epochs 100 --lr 0.0002 --seed 69
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_655/ilpo/ --max_epochs 100 --lr 0.0002 --seed 655
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_867/ilpo/ --max_epochs 100 --lr 0.0002 --seed 867
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_147/ilpo/ --max_epochs 100 --lr 0.0002 --seed 147
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_187/ilpo/ --max_epochs 100 --lr 0.0002 --seed 187
python models/vector_ilpo.py --mode train --input_dir /media/oli/LinuxData/datasets/pong/002_vector/txt/ --n_actions 12 --ngf 16 --batch_size 32 --output_dir /home/oli/workspace/ilpo/workspace/2021_08_24_pong/pong_257/ilpo/ --max_epochs 100 --lr 0.0002 --seed 257
COMMENT

