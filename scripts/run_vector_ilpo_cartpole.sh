#!/bin/bash
python models/vector_ilpo.py --mode train --input_dir final_models/cartpole_anomaly_100 --n_actions 2 --batch_size 32 --output_dir final_models/cartpole_anomaly_100/ilpo/ --max_epochs 100 --seed 100

