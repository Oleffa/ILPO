import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import matplotlib
matplotlib.use('TkAgg')

"""
backup_path = '/media/oli/LinuxData/VAEToolbox/ilpo_original_models/2021_04_28_models/'

f = 4
if f == 0:
    title = 'Original Dataset'
    files = [backup_path + 'cartpole_old_0/results/',
            backup_path + 'cartpole_old_10/results/',
            backup_path + 'cartpole_old_100/results/',
            './final_models/cartpole_old/results/',
            './final_models/cartpole_old_0/results/',
            './final_models/cartpole_old_100/results/']
if f == 1:
    title = 'New Dataset, same params as Original'
    files = [backup_path + 'cartpole_new1_0/results/',
            backup_path + 'cartpole_new1_10/results/',
            backup_path + 'cartpole_new1_100/results/',
            './final_models/cartpole_new1/results/',
            './final_models/cartpole_new1_0/results/',
            './final_models/cartpole_new1_100/results/']
if f == 2:
    title = 'New Dataset, Longer training time'
    files = [backup_path + 'cartpole_new2_0/results/',
            backup_path + 'cartpole_new2_10/results/',
            backup_path + 'cartpole_new2_100/results/',
            './final_models/cartpole_new2/results/',
            './final_models/cartpole_new2_0/results/',
            './final_models/cartpole_new2_100/results/']
if f == 3:
    title = 'New Dataset, Longer training time, limited reward'
    files = [backup_path + 'cartpole_new3_0/results/',
            backup_path + 'cartpole_new3_10/results/',
            backup_path + 'cartpole_new3_100/results/',
            './final_models/cartpole_new3/results/',
            './final_models/cartpole_new3_0/results/',
            './final_models/cartpole_new3_100/results/']
if f == 4:
    title = 'No idea where this was from'
    files = [backup_path + 'cartpole_anomaly_0/results/',
            backup_path + 'cartpole_anomaly_10/results/',
            backup_path + 'cartpole_anomaly_100/results/',
            './final_models/cartpole_anomaly/results/',
            './final_models/cartpole_anomaly_0/results/',
            './final_models/cartpole_anomaly_100/results/']

labels = ['Ours 0', 'Ours 10', 'Ours 100', 'ILPO 0', 'ILPO 10', 'ILPO 100']
colors = ['tab:red', 'tab:red', 'tab:red', 'tab:blue', 'tab:blue', 'tab:blue']
"""

files_ilpo = ['./workspace/2021_05_21_pong/pong_0/results/',
        './workspace/2021_05_21_pong/pong_1/results/',
        './workspace/2021_05_21_pong/pong_100/results/',
        './workspace/2021_05_21_pong/pong_200/results/',
        './workspace/2021_05_21_pong/pong_10000/results/',
        './workspace/2021_05_21_pong/pong_20000/results/']
files_ours = ['/home/oli/workspace/LFO/ilpo/models/2021_05_21_pong/pong_0/results/',
        '/home/oli/workspace/LFO/ilpo/models/2021_05_21_pong/pong_100/results/',
        '/home/oli/workspace/LFO/ilpo/models/2021_05_21_pong/pong_10000/results/']
"""
files_ilpo = ['/home/oli/workspace/ilpo/test/pong_0/results/',
        '/home/oli/workspace/ilpo/test/pong_100/results/',
        '/home/oli/workspace/ilpo/test/pong_10000/results/']

files_ours = ['/home/oli/workspace/LFO/ilpo/bak/2021_05_19_pong/pong_0/results/',
        '/home/oli/workspace/LFO/ilpo/bak/2021_05_19_pong/pong_100/results/',
        '/home/oli/workspace/LFO/ilpo/bak/2021_05_19_pong/pong_10000/results/']
"""

"""
files_ilpo = ['./workspace/2021_05_21_cartpole/cartpole_0/results/',
        './workspace/2021_05_21_cartpole/cartpole_100/results/',
        './workspace/2021_05_21_cartpole/cartpole_10000/results/']
files_ours = ['/home/oli/workspace/LFO/ilpo/models/2021_05_21_cartpole/cartpole_0/results/',
        '/home/oli/workspace/LFO/ilpo/models/2021_05_21_cartpole/cartpole_100/results/',
        '/home/oli/workspace/LFO/ilpo/models/2021_05_21_cartpole/cartpole_10000/results/']
"""
"""
files_ilpo = ['./workspace/2021_05_21_acrobot/acrobot_0/results/',
        './workspace/2021_05_21_acrobot/acrobot_100/results/',
        './workspace/2021_05_21_acrobot/acrobot_10000/results/']
files_ours = ['/home/oli/workspace/LFO/ilpo/models/2021_05_21_acrobot/acrobot_0/results/',
        '/home/oli/workspace/LFO/ilpo/models/2021_05_21_acrobot/acrobot_100/results/',
        '/home/oli/workspace/LFO/ilpo/models/2021_05_21_acrobot/acrobot_10000/results/']
"""

EXPERT = 0.74

labels = ['ilpo', 'ours']
colors = ['tab:orange', 'tab:blue']

NAME = "results/cartpole.png"
experiments = 3

def getdata(files, experiments):
    out = np.zeros((len(files), experiments, 30))
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
plot_mean(results_ilpo, time_ilpo, labels[0])
plot_mean(results_ours, time_ours, labels[1])
#plot_single(results_ilpo, time_ilpo, labels[0], colors[0])
#plot_single(results_ours, time_ours, labels[1], colors[1])

plt.axhline(y=EXPERT, color='k', linestyle='--', label="Expert")

plt.ylabel("Average Episodic Reward",fontsize=50)
plt.xlabel("Training Steps",fontsize=50)
plt.legend(prop={'size': 25})

plt.savefig(NAME)
plt.show()
