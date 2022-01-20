import gym
import numpy as np
from baselines import deepq


BEST = 1
#DEFAULT = 1.0
DEFAULT = 0.75
RANDOM = DEFAULT

"""
ENV = "CartPole-v1"
FILE = "final_models/cartpole.txt"
BC_FILE = "final_models/cartpole_bc.txt"
MODEL = "final_models/cartpole_model.pkl"
"""
ENV = "LunarLander-v2"
FILE = "final_models/ll_noisy.txt"
BC_FILE = "final_models/ll_bc_noisy.txt"
MODEL = "final_models/ll_model.pkl"


seq_size = 2
n = 50000

def main():
    env = gym.make(ENV)
    act = deepq.load_act(MODEL)
    steps = 0
    outfile = open(FILE, 'w')
    bcfile = open(BC_FILE, 'w')
    total_reward = 0
    episodes = 0

    while steps < n:
        obs, done = env.reset(), False
        episode_rew = 0
        states =[obs]
        while (not done) and steps < n:
            #env.render()

            if np.random.uniform(0,1) <= RANDOM:
                action = act(obs[None])[0]
            else:
                action = env.action_space.sample()

            obs, rew, done, _ = env.step(action)
            #state_2 = obs
            states.append(obs)

            if len(states) >= seq_size:
                for s in states[:-1]:
                    to_write = '['
                    # write to AON file
                    for w in s:
                        to_write += str(w) + ','
                    to_write = to_write[:-1]
                    to_write += ']'

                    outfile.write(to_write)
                    outfile.write(" ")

                    to_write = '['
                    for w in s:
                        to_write += str(w) + ','
                    to_write = to_write[:-1]
                    to_write += ']'
                outfile.write(to_write)
                outfile.write("\n")

                for s in states[:-1]:
                    # write to BC file
                    to_write = '['
                    for w in s:
                        to_write += str(w) + ','
                    to_write = to_write[:-1]
                    to_write += ']'

                    bcfile.write(to_write)
                    bcfile.write(" ")

                    bcfile.write("[" + str(action) + "]")
                    bcfile.write(" ")

                    to_write = '['
                    for w in s:
                        to_write += str(w) + ','
                    to_write = to_write[:-1]
                    to_write += ']'

                bcfile.write(to_write)
                bcfile.write("\n")

                states = []
                steps += 1

            episode_rew += rew


        print(steps)
        print("Episode reward", episode_rew)
        total_reward += episode_rew
        episodes += 1.

    print("Average reward", total_reward / episodes)
    outfile.close()
    bcfile.close()

if __name__ == '__main__':
    main()
