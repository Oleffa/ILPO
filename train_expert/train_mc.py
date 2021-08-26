import gym

from baselines import deepq
from baselines.common import models

def main():
    env = gym.make("LunarLander-v2")
    model = models.mlp(num_layers=3, num_hidden=64)
    act = deepq.learn(network=model,
        env=env,
        lr=5e-4,
        total_timesteps=500000, # 100000
        buffer_size=50000,
        gamma=0.98,
        batch_size=64,
        target_network_update_freq=4,
        exploration_fraction=0.1,
        exploration_final_eps=0.02,
        print_freq=10,
        learning_starts = 0
    )
    save_path= './final_models'
    print("Saving model to {}/mc_model.pkl".format(save_path))
    act.save_act("{}/mc_model.pkl".format(save_path))


if __name__ == '__main__':
    main()
