import gym

from baselines import ppo2
from baselines.common import models


def main():
    env = gym.make("Breakout-v0")
    #model = models.mlp(num_layers=1, num_hidden=64)
    model = models.cnn()
    act = ppo2.learn(network=model,
        env=env,
        lr=1e-3,
        total_timesteps=100000, # 100000
        buffer_size=50000,
        exploration_fraction=0.1,
        exploration_final_eps=0.02,
        print_freq=10,
    )
    save_path= './final_models'
    print("Saving model to {}/cartpole_model.pkl".format(save_path))
    act.save_act("{}/cartpole_model.pkl".format(save_path))


if __name__ == '__main__':
    main()
