import numpy as np
import matplotlib.pyplot as plt


tag = '1000'
lbl = 'T=1000'
folder = './2021_08_03_lander_2/'
exp = 'lander'

samples = 10000

if exp == 'lander':
    remapped_file = open(folder + 'lander_states_{}.txt'.format(tag), 'r')
    remapped_lines = remapped_file.readlines()
    expert_file = open('/media/oli/LinuxData/datasets/lunarlander/txt/ll.txt', 'r')
    expert_lines = expert_file.readlines()
    lines = min(len(expert_lines), len(remapped_lines))

    expert_data = np.zeros((lines, 2, 8))

    for i in range(lines):
        e = expert_lines[i].split(' ')
        expert_data[i][0] = np.fromstring(e[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')
        r = remapped_lines[i].split(' ')
        expert_data[i][1] = np.fromstring(r[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')

    fig, ax = plt.subplots(2,3)

    ax[0,0].set_title('XY Position')
    ax[0,0].set_xlabel('X')
    ax[0,0].set_ylabel('Y')
    ax[0,0].scatter(expert_data[:samples,0,0], expert_data[:samples,0,1], c='b', s=0.5, label='Expert')
    ax[0,0].scatter(expert_data[:samples,1,0], expert_data[:samples,1,1], c='r', alpha=0.5, s=0.5, label=lbl)
    ax[0,0].legend()

    ax[0,1].set_title('Velocity')
    ax[0,1].set_xlabel('Horizontal Velocity')
    ax[0,1].set_ylabel('Vertical Velocity')
    ax[0,1].scatter(expert_data[:samples,0,2], expert_data[:samples,0,3], c='b', s=0.5, label='Expert')
    ax[0,1].scatter(expert_data[:samples,1,2], expert_data[:samples,1,3], c='r', alpha=0.5, s=0.5, label=lbl)
    ax[0,1].legend()

    ax[1,0].set_title('Angle')
    ax[1,0].set_xlabel('Angle')
    ax[1,0].hist(expert_data[:,0,4], bins=30, range=(expert_data[:,:,4].min(), expert_data[:,:,4].max()), color='b', label='Expert')
    ax[1,0].hist(expert_data[:,1,4], bins=30, range=(expert_data[:,:,4].min(), expert_data[:,:,4].max()), color='r', alpha=0.3, label=lbl)
    ax[1,0].legend()

    ax[1,1].set_title('Angular Speed')
    ax[1,0].set_xlabel('V_rot')
    ax[1,1].hist(expert_data[:,0,5], bins=30, range=(expert_data[:,:,5].min(), expert_data[:,:,5].max()), color='b', label='Expert')
    ax[1,1].hist(expert_data[:,1,5], bins=30, range=(expert_data[:,:,5].min(), expert_data[:,:,5].max()), color='r', alpha=0.3, label=lbl)
    ax[1,1].legend()

    # PCA
    from sklearn.decomposition import PCA
    e = expert_data[:samples,0,:]
    r = expert_data[:samples,1,:]

    pca_e = PCA(n_components=2)
    pca_r = PCA(n_components=2)

    e_pca = pca_e.fit_transform(e)
    r_pca = pca_r.fit_transform(r)

    print(pca_e.explained_variance_ratio_, pca_r.explained_variance_ratio_)
    print(pca_e.singular_values_, pca_r.singular_values_)
    
    ax[1,2].set_title('PCA')
    ax[1,2].scatter(e_pca[:,0], e_pca[:,1], c='b', s=0.5, label='Expert')
    ax[1,2].scatter(r_pca[:,0], r_pca[:,1], c='r', alpha=0.1, s=0.5, label=lbl)
    ax[1,2].legend()

    plt.savefig(fname=folder+'lander_states_{}.png'.format(tag), dpi=500)
    plt.show()

elif exp == 'acrobot':
    remapped_file = open(folder + 'acrobot_states_{}.txt'.format(tag), 'r')
    remapped_lines = remapped_file.readlines()
    expert_file = open('/media/oli/LinuxData/datasets/acrobot/txt/acrobot.txt', 'r')
    expert_lines = expert_file.readlines()
    lines = min(len(expert_lines), len(remapped_lines))

    expert_data = np.zeros((lines, 2, 6))

    for i in range(lines):
        e = expert_lines[i].split(' ')
        expert_data[i][0] = np.fromstring(e[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')
        r = remapped_lines[i].split(' ')
        expert_data[i][1] = np.fromstring(r[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')


    fig, ax = plt.subplots(1,3)
    ax[0].set_title('Joint Angles (rad)')
    ax[0].set_xlabel('Joint 1')
    ax[0].set_ylabel('Joint 2')
    ax[0].scatter(np.arccos(expert_data[:samples,0,0]), np.arccos(expert_data[:samples,0,1]), c='b', label='Expert')
    ax[0].scatter(np.arccos(expert_data[:samples,1,0]), np.arccos(expert_data[:samples,1,1]), c='r', alpha=0.3, label=lbl)
    ax[0].legend()

    ax[1].set_title('Joint Angular velocits (rad/s)')
    ax[1].set_xlabel('Joint 1')
    ax[1].set_ylabel('Joint 2')
    ax[1].scatter(expert_data[:samples,0,4], expert_data[:samples,0,5], c='b', label='Expert')
    ax[1].scatter(expert_data[:samples,1,4], expert_data[:samples,1,5], c='r', alpha=0.3, label=lbl)
    ax[1].legend()

    from sklearn.decomposition import PCA
    e = expert_data[:samples,0,:]
    r = expert_data[:samples,1,:]

    pca_e = PCA(n_components=2)
    pca_r = PCA(n_components=2)

    e_pca = pca_e.fit_transform(e)
    r_pca = pca_r.fit_transform(r)

    print(pca_e.explained_variance_ratio_, pca_r.explained_variance_ratio_)
    print(pca_e.singular_values_, pca_r.singular_values_)

    ax[2].set_title('PCA 2D')
    ax[2].scatter(e_pca[:,0], e_pca[:,1], c='b', label='Expert')
    ax[2].scatter(r_pca[:,0], r_pca[:,1], c='r', alpha=0.2, label=lbl)
    ax[2].legend()

    plt.savefig(fname=folder+'acrobot_states_{}.png'.format(tag), dpi=500)
    plt.show()

elif exp == 'cartpole':
    remapped_file = open(folder + 'cartpole_states_{}.txt'.format(tag), 'r')
    remapped_lines = remapped_file.readlines()
    expert_file = open('/media/oli/LinuxData/datasets/cartpole/cartpole_old/txt/cartpole_old.txt', 'r')
    expert_lines = expert_file.readlines()
    lines = min(len(expert_lines), len(remapped_lines))

    expert_data = np.zeros((lines, 2, 4))

    for i in range(lines):
        e = expert_lines[i].split(' ')
        expert_data[i][0] = np.fromstring(e[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')
        r = remapped_lines[i].split(' ')
        expert_data[i][1] = np.fromstring(r[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')


    fig, ax = plt.subplots(1,5)

    ax[0].set_title('Cart Position')
    ax[0].set_xlabel('X')
    ax[0].hist(expert_data[:,0,0], bins=30, range=(expert_data[:,:,0].min(), expert_data[:,:,0].max()), color='b', label='Expert')
    ax[0].hist(expert_data[:,1,0], bins=30, range=(expert_data[:,:,0].min(), expert_data[:,:,0].max()), color='r', alpha=0.3, label=lbl)
    ax[0].legend()

    ax[1].set_title('Cart Velocity')
    ax[1].set_xlabel('Vx')
    ax[1].hist(expert_data[:,0,1], bins=30, range=(expert_data[:,:,1].min(), expert_data[:,:,1].max()), color='b', label='Expert')
    ax[1].hist(expert_data[:,1,1], bins=30, range=(expert_data[:,:,1].min(), expert_data[:,:,1].max()), color='r', alpha=0.3, label=lbl)
    ax[1].legend()

    ax[2].set_title('Pole Angle')
    ax[2].set_xlabel('Angle (rad)')
    ax[2].hist(expert_data[:,0,2], bins=30, range=(expert_data[:,:,2].min(), expert_data[:,:,2].max()), color='b', label='Expert')
    ax[2].hist(expert_data[:,1,2], bins=30, range=(expert_data[:,:,2].min(), expert_data[:,:,2].max()), color='r', alpha=0.3, label=lbl) 
    ax[2].legend()

    ax[3].set_title('Pole Angular Velocity')
    ax[3].set_xlabel('V_rot (rad/s)')
    ax[3].hist(expert_data[:,0,3], bins=30, range=(expert_data[:,:,3].min(), expert_data[:,:,3].max()), color='b', label='Expert')
    ax[3].hist(expert_data[:,1,3], bins=30, range=(expert_data[:,:,3].min(), expert_data[:,:,3].max()), color='r', alpha=0.3, label=lbl)
    ax[3].legend()

    from sklearn.decomposition import PCA
    e = expert_data[:samples,0,:]
    r = expert_data[:samples,1,:]

    pca_e = PCA(n_components=2)
    pca_r = PCA(n_components=2)

    e_pca = pca_e.fit_transform(e)
    r_pca = pca_r.fit_transform(r)

    print(pca_e.explained_variance_ratio_, pca_r.explained_variance_ratio_)
    print(pca_e.singular_values_, pca_r.singular_values_)

    ax[4].set_title('PCA')
    ax[4].scatter(e_pca[:,0], e_pca[:,1], c='b', label='Expert')
    ax[4].scatter(r_pca[:,0], r_pca[:,1], c='r', alpha=0.2, label=lbl)
    ax[4].legend()

    plt.savefig(fname=folder+'cartpole_states_{}.png'.format(tag), dpi=500)
    plt.show()

elif exp == 'pong':
    remapped_file = open(folder + 'pong_states_{}.txt'.format(tag), 'r')
    remapped_lines = remapped_file.readlines()
    expert_file = open('/media/oli/LinuxData/datasets/pong/vector/txt/vector_pong.txt', 'r')

    expert_lines = expert_file.readlines()
    lines = min(len(expert_lines), len(remapped_lines))

    expert_data = np.zeros((lines, 2, 6))

    for i in range(lines):
        e = expert_lines[i].split(' ')
        expert_data[i][0] = np.fromstring(e[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')
        r = remapped_lines[i].split(' ')
        expert_data[i][1] = np.fromstring(r[0].replace(',', ' ').strip('[]'), dtype=np.float64, sep=' ')


    fig, ax = plt.subplots(1,4)

    ax[0].set_title('Player Position')
    ax[0].set_xlabel('Y')
    ax[0].hist(expert_data[:,0,0], bins=100, range=(expert_data[:,:,0].min(), expert_data[:,:,0].max()), color='b', label='Expert')
    ax[0].hist(expert_data[:,1,0], bins=100, range=(expert_data[:,:,0].min(), expert_data[:,:,0].max()), color='r', alpha=0.3, label=lbl)
    ax[0].legend()

    ax[1].set_title('Enemy Position')
    ax[1].set_xlabel('Y')
    ax[1].hist(expert_data[:,0,1], bins=100, range=(expert_data[:,:,1].min(), expert_data[:,:,0].max()), color='b', label='Expert')
    ax[1].hist(expert_data[:,1,1], bins=100, range=(expert_data[:,:,1].min(), expert_data[:,:,0].max()), color='r', alpha=0.3, label=lbl)
    ax[1].legend()

    ax[2].set_title('Ball Position')
    ax[2].set_xlabel('Y')
    ax[2].scatter(expert_data[:,0,2], expert_data[:,0,3], color='b', label='Expert')
    ax[2].scatter(expert_data[:,1,2], expert_data[:,1,3], color='r', alpha=0.3, label=lbl)
    ax[2].legend()

    from sklearn.decomposition import PCA
    e = expert_data[:samples,0,:]
    r = expert_data[:samples,1,:]

    pca_e = PCA(n_components=2)
    pca_r = PCA(n_components=2)

    e_pca = pca_e.fit_transform(e)
    r_pca = pca_r.fit_transform(r)

    print(pca_e.explained_variance_ratio_, pca_r.explained_variance_ratio_)
    print(pca_e.singular_values_, pca_r.singular_values_)

    ax[3].set_title('PCA')
    ax[3].scatter(e_pca[:,0], e_pca[:,1], c='b', label='Expert')
    ax[3].scatter(r_pca[:,0], r_pca[:,1], c='r', alpha=0.2, label=lbl)
    ax[3].legend()

    plt.savefig(fname=folder+'cartpole_states_{}.png'.format(tag), dpi=500)
    plt.show()


