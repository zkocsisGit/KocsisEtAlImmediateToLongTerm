# -*- coding: utf-8 -*-
"""
Created on Tue Jun 23 14:21:35 2026

@author: kocsi
"""

import matplotlib.pyplot as plt
import mne

# for this analysis, the differences were created in matlab separately, the files are given
# setup local folder for analysis
parentDir = './'
#choose folder for MRI data
mriDir = './SourceLoc_wholebrain/P2/post2mo/P2_post2_MRI/'

# load source estimate difference file
stc = mne.read_source_estimate(parentDir + 'P2_post6post2_target-rh.stc')

# give a timepoint to visualize, and check data files
time = 0.16 # 160 ms after target word onset
time_name = str(time*1000)

n_vertices, n_samples = stc.data.shape
print("stc data size: %s (nb of vertices) x %s (nb of samples)"
      % (n_vertices, n_samples))

# view source activations
plt.plot(stc.times, stc.data[::100, :].T)
plt.xlabel('time (ms)')
plt.ylabel('Source amplitude')
plt.show()

# set up mri images
brain = stc.plot(subject=mriDir, subjects_dir=parentDir, views='lat', hemi='split', size=(2500,1200),
    initial_time=time, time_viewer=True, show_traces=True,smoothing_steps=15, clim=dict(kind='value', pos_lims = [3.2, 4.2, 5.2], neg_lims = [-3.2, -4.2, -5.2]))

# add black outline to ROIs
brain.add_label('G_front_inf-Opercular', hemi='lh', color='black', borders=True)
brain.add_label('G_front_inf-Orbital', hemi='lh', color='black', borders=True)
brain.add_label('G_front_inf-Triangul', hemi='lh', color='black', borders=True)
brain.add_label('G_temp_sup-G_T_transv', hemi='lh', color='black', borders=True)
brain.add_label('G_temp_sup-Lateral', hemi='lh', color='black', borders=True)

brain.add_label('G_front_inf-Opercular', hemi='rh', color='black', borders=True)
brain.add_label('G_front_inf-Orbital', hemi='rh', color='black', borders=True)
brain.add_label('G_front_inf-Triangul', hemi='rh', color='black', borders=True)
brain.add_label('G_temp_sup-G_T_transv', hemi='rh', color='black', borders=True)
brain.add_label('G_temp_sup-Lateral', hemi='rh', color='black', borders=True)

brain.add_label('Pole_temporal', hemi='rh', color='black', borders=True)