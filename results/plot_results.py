import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import matplotlib
matplotlib.use('TkAgg')

f = 4
if f == 0:
    title = 'Original Dataset'
    files = ['/home/oli/workspace/LFO/ilpo/models/cartpole_old_0/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_old_10/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_old_100/results/',
            './final_models/cartpole_old/results/',
            './final_models/cartpole_old_0/results/',
            './final_models/cartpole_old_100/results/']
if f == 1:
    title = 'New Dataset, same params as Original'
    files = ['/home/oli/workspace/LFO/ilpo/models/cartpole_new1_0/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_new1_10/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_new1_100/results/',
            './final_models/cartpole_new1/results/',
            './final_models/cartpole_new1_0/results/',
            './final_models/cartpole_new1_100/results/']
if f == 2:
    title = 'New Dataset, Longer training time'
    files = ['/home/oli/workspace/LFO/ilpo/models/cartpole_new2_0/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_new2_10/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_new2_100/results/',
            './final_models/cartpole_new2/results/',
            './final_models/cartpole_new2_0/results/',
            './final_models/cartpole_new2_100/results/']
if f == 3:
    title = 'New Dataset, Longer training time, limited reward'
    files = ['/home/oli/workspace/LFO/ilpo/models/cartpole_new3_0/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_new3_10/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_new3_100/results/',
            './final_models/cartpole_new3/results/',
            './final_models/cartpole_new3_0/results/',
            './final_models/cartpole_new3_100/results/']
if f == 4:
    title = 'No idea where this was from'
    files = ['/home/oli/workspace/LFO/ilpo/models/cartpole_anomaly_0/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_anomaly_10/results/',
            '/home/oli/workspace/LFO/ilpo/models/cartpole_anomaly_100/results/',
            './final_models/cartpole_anomaly/results/',
            './final_models/cartpole_anomaly_0/results/',
            './final_models/cartpole_anomaly_100/results/']

labels = ['Ours 0', 'Ours 10', 'Ours 100', 'ILPO 0', 'ILPO 10', 'ILPO 100']
colors = ['tab:red', 'tab:red', 'tab:red', 'tab:blue', 'tab:blue', 'tab:blue']

NAME = "results/cartpole.png"

def getdata(name):
    all_results = []

    for i in range(0, 49):
        f = open(name + str(i) + ".csv", "r")
        results = []
        time = []

        for line in f:
            step, reward = (line.replace("\n", "")).split(",")
            results.append(float(reward))
            time.append(float(step))

        all_results.append(results)


    return all_results, time



sns.set(rc={'figure.figsize':(10,9)})
fig = plt.figure()
for i, f in enumerate(files):
    results, time = getdata(f)
    sns.tsplot(condition=labels[i], time=time, data=results, color=colors[i], linestyle='-', err_style='ci_band', interpolate=False, legend=True)


plt.ylabel("Average Episodic Reward",fontsize=50)
plt.xlabel("Training Steps",fontsize=50)
plt.legend(prop={'size': 25})

plt.savefig(NAME)
plt.show()
