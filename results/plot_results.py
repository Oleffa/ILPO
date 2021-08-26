import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import matplotlib
matplotlib.use('TkAgg')


exp = 1

if exp == 1:
    experiments = 200
    timesteps = 30
    NAME = "results/pong.png"
    EXPERT = 0.78
    RANDOM = None
    NOTHING = None
    mean = True

    p1 = '/media/oli/LinuxData/ILPO/workspace/2021_06_01_pong/'
    files_ilpo = [p1 + 'pong_0/results/',
            p1 + 'pong_1/results/',
            p1 + 'pong_10/results/',
            p1 + 'pong_100/results/',
            p1 + 'pong_1000/results/',
            p1 + 'pong_10000/results/',
            p1 + 'pong_1234/results/',
            p1 + 'pong_1337/results/',
            p1 + 'pong_420/results/',
            p1 + 'pong_655/results/',
            p1 + 'pong_69/results/',
            p1 + 'pong_867/results/']
    #p2 = '/media/oli/LinuxData/ILPO/models/2021_06_01_pong/'
    #p2 = '/media/oli/LinuxData/ILPO/models/2021_08_06_pong/'
    #p2 = '/media/oli/LinuxData/ILPO/models/test/2021_06_01_pong/'
    p2 = '/media/oli/LinuxData/ILPO/models/2021_08_06_pong/'
    files_ours = [p2 + 'pong_0/results/',
            p2 + 'pong_1/results/',
            p2 + 'pong_10/results/',
            p2 + 'pong_100/results/',
            p2 + 'pong_1000/results/',
            p2 + 'pong_10000/results/',
            p2 + 'pong_1234/results/',
            p2 + 'pong_1337/results/',
            p2 + 'pong_420/results/',
            p2 + 'pong_655/results/',
            p2 + 'pong_69/results/',
            p2 + 'pong_879/results/']
elif exp == 2:
    experiments = 50
    timesteps = 50
    NAME = "results/cartpole.png"
    EXPERT = 257.13
    RANDOM = 22.81
    NOTHING = None
    mean = True

    p1 = '/media/oli/LinuxData/ILPO/workspace/2021_06_01_cartpole/'
    files_ilpo = [p1 + 'cartpole_0/results/',
            p1 + 'cartpole_1/results/',
            p1 + 'cartpole_10/results/',
            p1 + 'cartpole_100/results/']
    #p2 = '/media/oli/LinuxData/ILPO/models/2021_07_01_cartpole/'
    p2 = '/media/oli/LinuxData/ILPO/models/2021_08_06_cartpole/'
    files_ours = [p2 + 'cartpole_0/results/',
            p2 + 'cartpole_1/results/',
            p2 + 'cartpole_10/results/',
            p2 + 'cartpole_100/results/']
elif exp == 3:
    experiments = 50
    timesteps = 50
    NAME = "results/acrobot.png"
    EXPERT = -96.85
    RANDOM = -499.77
    NOTHING = None
    mean = True

    p1 = '/media/oli/LinuxData/ILPO/workspace/2021_06_01_acrobot/'
    files_ilpo = [p1 + 'acrobot_0/results/',
            p1 + 'acrobot_1/results/',
            p1 + 'acrobot_10/results/',
            p1 + 'acrobot_100/results/']
    #p2 = '/media/oli/LinuxData/ILPO/models/2021_07_01_acrobot/'
    p2 = '/media/oli/LinuxData/ILPO/models/2021_08_06_acrobot/'
    files_ours = [p2 + 'acrobot_0/results/',
            p2 + 'acrobot_1/results/',
            p2 + 'acrobot_10/results/',
            p2 + 'acrobot_100/results/']
elif exp == 4:
    experiments = 50
    timesteps = 30
    NAME = "results/lander.png"
    EXPERT = 230
    RANDOM = -186
    NOTHING = -132
    mean = True

    p1 = '/media/oli/LinuxData/ILPO/workspace/2021_08_02_lander/'
    files_ilpo = [p1 + 'll_0/results/',
                p1 + 'll_1/results/',
                p1 + 'll_10/results/',
                p1 + 'll_100/results/']
    #p2 = '/media/oli/LinuxData/ILPO/models/2021_07_01_lander/'
    p2 = '/media/oli/LinuxData/ILPO/models/2021_08_06_lander/'
    files_ours = [p2 + 'll_0/results/',
                p2 + 'll_1/results/',
                p2 + 'll_10/results/',
                p2 + 'll_100/results/']

labels = ['ilpo', 'ours']
colors = ['tab:orange', 'tab:blue']


def getdata(files, experiments):
    out = np.zeros((len(files), experiments, timesteps))
    for idx, f in enumerate(files):
        all_results = []
        for i in range(0, experiments):
            j = open(f+ str(i) + ".csv", "r")
            results = []
            time = []

            for line in j:
                step, reward = (line.replace("\n", "")).split(",")
                results.append(float(reward))
                time.append(float(step))

            all_results.append(results)
        out[idx] = np.array(all_results)
    return out, time

def plot_mean(results, time, label):
    mean_ilpo = results.mean((0,1))
    std_ilpo = results.std((0,1))
    plt.plot(time_ilpo, mean_ilpo, label=label)
    plt.fill_between(time_ilpo, mean_ilpo + std_ilpo, mean_ilpo - std_ilpo, alpha=0.3)

def plot_single(results, time, label, c):
    for idx, i in enumerate(results):
        sns.tsplot(condition=label, time=time, data=i, color=c, linestyle='-', err_style='ci_band', interpolate=False, legend=True)

sns.set(rc={'figure.figsize':(10,9)})
fig = plt.figure()

results_ilpo, time_ilpo = getdata(files_ilpo, experiments)
results_ours, time_ours = getdata(files_ours, experiments)

if mean:
    plot_mean(results_ilpo, time_ilpo, labels[0])
    plot_mean(results_ours, time_ours, labels[1])
else:
    plot_single(results_ilpo, time_ilpo, labels[0], colors[0])
    plot_single(results_ours, time_ours, labels[1], colors[1])

plt.axhline(y=EXPERT, color='k', linestyle='--', label="Expert")
if None is not RANDOM:
    plt.axhline(y=RANDOM, color='k', linestyle='-', label="Random")
if None is not NOTHING:
    plt.axhline(y=NOTHING, color='k', linestyle='-.', label="No Action")

plt.ylabel("Average Episodic Reward",fontsize=50)
plt.xlabel("Training Steps",fontsize=50)
plt.legend(prop={'size': 25})

plt.savefig(NAME)
plt.show()
