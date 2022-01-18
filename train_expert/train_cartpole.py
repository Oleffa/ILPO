import gym

from baselines import deepq
from baselines.common import models


def callback(lcl, _glb):
    # stop training if reward exceeds 199
    is_solved = lcl['t'] > 100 and sum(lcl['episode_rewards'][-101:-1]) / 100 >= 199
    return is_solved


def main():
    #env = gym.make("CartPole-v1")
    env = gym.make("Acrobot-v1")
    model = models.mlp(num_layers=1, num_hidden=64)
    act = deepq.learn(network=model,
        env=env,
        lr=1e-3,
        total_timesteps=100000,
        buffer_size=50000,
        exploration_fraction=0.1,
        exploration_final_eps=0.02,
        print_freq=10,
        callback=callback
    )
    save_path= './final_models'
    print("Saving model to {}/acrobot_model.pkl".format(save_path))
    act.save_act("{}/acrobot_model.pkl".format(save_path))


if __name__ == '__main__':
    main()
