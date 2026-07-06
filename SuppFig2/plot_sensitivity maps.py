# -*- coding: utf-8 -*-
"""
Created on Thu Jun 25 11:05:30 2026

@author: kocsi
"""

# to plot sensitivity maps for supplementary figure X, breach effect

#import numpy as np
import mne
import matplotlib.pyplot as plt

# load patient data folder, change file names accordingly to plot each patient and time!
path ='./P1/P1_pre/'
sourcesp = path + 'P1_pre_MRI/bem/P1_pre_ico-6-src.fif'
trans = path + 'P1_pre_trans.fif'
bem = './P1_pre_MRI/bem/P1_pre-bem-sol.fif'

raw = mne.io.read_raw_eeglab(input_fname = path + '531_pre_newtrigtimes.set', preload = True, verbose = None)
src = mne.read_source_spaces(sourcesp, patch_stats = False, verbose = None)
fwd = mne.make_forward_solution(info = raw.info, trans = trans, src = src, bem = path + bem, eeg = True, mindist = 5.0, verbose = None, n_jobs = 6)

eeg_map = mne.sensitivity_map(fwd, ch_type = 'eeg', mode = 'fixed')

plt.hist(eeg_map.data.ravel())

clim= dict(kind = 'percent', lims = (0.0,50,99))
brain = eeg_map.plot(subjects_dir = path, clim = clim, hemi = 'lh')

brain.add_text(0.35, 0.9, 'EEG sensitivity', 'title', font_size = 16)