import gym

from baselines import deepq
from baselines.common import models

def main():
    env = gym.make("LunarLander-v2")
    model = models.mlp(num_layers=3, num_hidden=128)
    act = deepq.learn(network=model,
        env=env,
        lr=1e-4,
        total_timesteps=300000, # 100000
        buffer_size=50000,
        gamma=0.99,
        batch_size=128,
        target_network_update_freq=100,
        exploration_fraction=0.3,
        exploration_final_eps=0.1,
        print_freq=10,
        learning_starts = 0
    )
    save_path= './final_models'
    print("Saving model to {}/mc_model2.pkl".format(save_path))
    act.save_act("{}/mc_model2.pkl".format(save_path))


if __name__ == '__main__':
    main()
