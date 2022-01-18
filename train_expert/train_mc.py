import gym

from baselines import deepq
from baselines.common import models

def callback(lcl, _glb):
    is_solved = lcl['t'] > 30000 and sum(lcl['episode_rewards'][-101:-1]) / 100 >= -140
    return is_solved

def main():
    env = gym.make("MountainCar-v0")
    model = models.mlp(num_layers=2, num_hidden=64)
    act = deepq.learn(network=model,
        env=env,
        lr=1e-3,
        total_timesteps=1000000,
        buffer_size=50000,
        gamma=0.95,
        prioritized_replay=True,
        batch_size=32,
        target_network_update_freq=100,
        exploration_fraction=0.2,
        exploration_final_eps=0.01,
        print_freq=20,
        learning_starts = 0,
        callback=callback
    )
    save_path= './final_models'
    print("Saving model to {}/ll_model.pkl".format(save_path))
    act.save_act("{}/mc_model.pkl".format(save_path))


if __name__ == '__main__':
    main()
