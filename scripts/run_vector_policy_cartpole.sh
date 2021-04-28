#!/bin/bash
python models/vector_policy.py --mode test --n_actions 2 --real_actions 2 --batch_size 32  --checkpoint final_models/cartpole_anomaly_100/ilpo --env CartPole-v1 --exp_dir final_models/cartpole_anomaly_100/results/ --n_dims 4

