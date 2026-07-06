%% this script plots the ROI figure part in Figure 2D to compare activation of a selection of ROIs between the timepoints relative to surgery
%plotting parameters
time = 1:616; % between -115 to 500 ms
minSize =  5; % shortest significance window

% choose local folder here
pre1 = load('./data/P1_pre_target_3-30Hz_a2009s');
pre2 = load('./data/P2_pre_target_3-30Hz_a2009s');
pre3 = load('./data/P3_pre_target_3-30Hz_a2009s');
% first, let's calculate the pre-surgical values
% P3 had right sided surgery, so need to account for that change in the following
% choose ROIs we want to analyze based on a2009s_ROIlabels.xlsx
pre_cont_hg = [pre1.label_ts(:,66,:); pre2.label_ts(:,66,:); pre3.label_ts(:,65,1:3000)];
pre_ipsi_hg = [pre1.label_ts(:,65,:); pre2.label_ts(:,65,:); pre3.label_ts(:,66,1:3000)];
pre_ipsi_hg_s1 = pre1.label_ts(:,66,:);
pre_ipsi_hg_s2 = pre2.label_ts(:,66,:);
pre_ipsi_hg_s3 = pre3.label_ts(:,65,:);
pre_cont_hg_s1 = pre1.label_ts(:,65,:);
pre_cont_hg_s2 = pre2.label_ts(:,65,:);
pre_cont_hg_s3 = pre3.label_ts(:,66,:);

pre_cont_stg = [pre1.label_ts(:,68,:); pre2.label_ts(:,68,:); pre3.label_ts(:,67,1:3000)];
pre_ipsi_stg = [pre1.label_ts(:,67,:); pre2.label_ts(:,67,:); pre3.label_ts(:,68,1:3000)];
pre_ipsi_stg_s1 = pre1.label_ts(:,68,:);
pre_ipsi_stg_s2 = pre2.label_ts(:,68,:);
pre_ipsi_stg_s3 = pre3.label_ts(:,67,:);
pre_cont_stg_s1 = pre1.label_ts(:,67,:);
pre_cont_stg_s2 = pre2.label_ts(:,67,:);
pre_cont_stg_s3 = pre3.label_ts(:,68,:);

pre_cont_ifgop = [pre1.label_ts(:,26,:); pre2.label_ts(:,26,:); pre3.label_ts(:,25,1:3000)];
pre_ipsi_ifgop = [pre1.label_ts(:,25,:); pre2.label_ts(:,25,:); pre3.label_ts(:,26,1:3000)];
pre_ipsi_ifgop_s1 = pre1.label_ts(:,26,:);
pre_ipsi_ifgop_s2 = pre2.label_ts(:,26,:);
pre_ipsi_ifgop_s3 = pre3.label_ts(:,25,:);
pre_cont_ifgop_s1 = pre1.label_ts(:,25,:);
pre_cont_ifgop_s2 = pre2.label_ts(:,25,:);
pre_cont_ifgop_s3 = pre3.label_ts(:,26,:);

pre_cont_ifgor = [pre1.label_ts(:,28,:); pre2.label_ts(:,28,:); pre3.label_ts(:,27,1:3000)];
pre_ipsi_ifgor = [pre1.label_ts(:,27,:); pre2.label_ts(:,27,:); pre3.label_ts(:,28,1:3000)];
pre_ipsi_ifgor_s1 = pre1.label_ts(:,28,:);
pre_ipsi_ifgor_s2 = pre2.label_ts(:,28,:);
pre_ipsi_ifgor_s3 = pre3.label_ts(:,27,:);
pre_cont_ifgor_s1 = pre1.label_ts(:,27,:);
pre_cont_ifgor_s2 = pre2.label_ts(:,27,:);
pre_cont_ifgor_s3 = pre3.label_ts(:,28,:);

pre_cont_ifgtri = [pre1.label_ts(:,30,:); pre2.label_ts(:,30,:); pre3.label_ts(:,29,1:3000)];
pre_ipsi_ifgtri = [pre1.label_ts(:,29,:); pre2.label_ts(:,29,:); pre3.label_ts(:,30,1:3000)];
pre_ipsi_ifgtri_s1 = pre1.label_ts(:,30,:);
pre_ipsi_ifgtri_s2 = pre2.label_ts(:,30,:);
pre_ipsi_ifgtri_s3 = pre3.label_ts(:,29,:);
pre_cont_ifgtri_s1 = pre1.label_ts(:,29,:);
pre_cont_ifgtri_s2 = pre2.label_ts(:,29,:);
pre_cont_ifgtri_s3 = pre3.label_ts(:,30,:);

pre_cont_tp = [pre1.label_ts(:,86,:); pre2.label_ts(:,86,:); pre3.label_ts(:,85,1:3000)];
pre_cont_tp_s1 = pre1.label_ts(:,86,:);
pre_cont_tp_s2 = pre2.label_ts(:,86,:);
pre_cont_tp_s3 = pre3.label_ts(:,85,:);

% calculate average and SEM
pre_cont_hg_avg = abs(squeeze(mean(pre_cont_hg,1)));
pre_cont_hg_avg = pre_cont_hg_avg(885:1500,:);
pre_cont_hg_sem = squeeze(std(pre_cont_hg,[],1)/sqrt(size(pre_cont_hg,1)));
pre_cont_hg_sem = pre_cont_hg_sem(885:1500);

pre_ipsi_hg_avg = abs(squeeze(mean(pre_ipsi_hg,1)));
pre_ipsi_hg_avg = pre_ipsi_hg_avg(885:1500,:);
pre_ipsi_hg_sem = squeeze(std(pre_ipsi_hg,[],1)/sqrt(size(pre_ipsi_hg,1)));
pre_ipsi_hg_sem = pre_ipsi_hg_sem(885:1500);

pre_cont_stg_avg = abs(squeeze(mean(pre_cont_stg,1)));
pre_cont_stg_avg = pre_cont_stg_avg(885:1500,:);
pre_cont_stg_sem = squeeze(std(pre_cont_stg,[],1)/sqrt(size(pre_cont_stg,1)));
pre_cont_stg_sem = pre_cont_stg_sem(885:1500);

pre_ipsi_stg_avg = abs(squeeze(mean(pre_ipsi_stg,1)));
pre_ipsi_stg_avg = pre_ipsi_stg_avg(885:1500,:);
pre_ipsi_stg_sem = squeeze(std(pre_ipsi_stg,[],1)/sqrt(size(pre_ipsi_stg,1)));
pre_ipsi_stg_sem = pre_ipsi_stg_sem(885:1500);

pre_cont_ifgop_avg = abs(squeeze(mean(pre_cont_ifgop,1)));
pre_cont_ifgop_avg = pre_cont_ifgop_avg(885:1500,:);
pre_cont_ifgop_sem = squeeze(std(pre_cont_ifgop,[],1)/sqrt(size(pre_cont_ifgop,1)));
pre_cont_ifgop_sem = pre_cont_ifgop_sem(885:1500);

pre_ipsi_ifgop_avg = abs(squeeze(mean(pre_ipsi_ifgop,1)));
pre_ipsi_ifgop_avg = pre_ipsi_ifgop_avg(885:1500,:);
pre_ipsi_ifgop_sem = squeeze(std(pre_ipsi_ifgop,[],1)/sqrt(size(pre_ipsi_ifgop,1)));
pre_ipsi_ifgop_sem = pre_ipsi_ifgop_sem(885:1500);

pre_cont_ifgor_avg = abs(squeeze(mean(pre_cont_ifgor,1)));
pre_cont_ifgor_avg = pre_cont_ifgor_avg(885:1500,:);
pre_cont_ifgor_sem = squeeze(std(pre_cont_ifgor,[],1)/sqrt(size(pre_cont_ifgor,1)));
pre_cont_ifgor_sem = pre_cont_ifgor_sem(885:1500);

pre_ipsi_ifgor_avg = abs(squeeze(mean(pre_ipsi_ifgor,1)));
pre_ipsi_ifgor_avg = pre_ipsi_ifgor_avg(885:1500,:);
pre_ipsi_ifgor_sem = squeeze(std(pre_ipsi_ifgor,[],1)/sqrt(size(pre_ipsi_ifgor,1)));
pre_ipsi_ifgor_sem = pre_ipsi_ifgor_sem(885:1500);

pre_cont_ifgtri_avg = abs(squeeze(mean(pre_cont_ifgtri,1)));
pre_cont_ifgtri_avg = pre_cont_ifgtri_avg(885:1500,:);
pre_cont_ifgtri_sem = squeeze(std(pre_cont_ifgtri,[],1)/sqrt(size(pre_cont_ifgtri,1)));
pre_cont_ifgtri_sem = pre_cont_ifgtri_sem(885:1500);

pre_ipsi_ifgtri_avg = abs(squeeze(mean(pre_ipsi_ifgtri,1)));
pre_ipsi_ifgtri_avg = pre_ipsi_ifgtri_avg(885:1500,:);
pre_ipsi_ifgtri_sem = squeeze(std(pre_ipsi_ifgtri,[],1)/sqrt(size(pre_ipsi_ifgtri,1)));
pre_ipsi_ifgtri_sem = pre_ipsi_ifgtri_sem(885:1500);

pre_cont_tp_avg = abs(squeeze(mean(pre_cont_tp,1)));
pre_cont_tp_avg = pre_cont_tp_avg(885:1500,:);
pre_cont_tp_sem = squeeze(std(pre_cont_tp,[],1)/sqrt(size(pre_cont_tp,1)));
pre_cont_tp_sem = pre_cont_tp_sem(885:1500);

%% second, let's calculate the post 2 months values
post1 = load('./data/P1_post2_target_3-30Hz_a2009s.mat');
post2 = load('./data/P2_post2_target_3-30Hz_a2009s.mat');
post3 = load('./data/P3_post2_target_3-30Hz_a2009s.mat');

post_cont_hg = [post1.label_ts(:,66,:); post2.label_ts(:,66,:); post3.label_ts(:,65,1:3000)];
post_ipsi_hg = [post1.label_ts(:,65,:); post2.label_ts(:,65,:); post3.label_ts(:,66,1:3000)];
post_ipsi_hg_s1 = post1.label_ts(:,66,:);
post_ipsi_hg_s2 = post2.label_ts(:,66,:);
post_ipsi_hg_s3 = post3.label_ts(:,65,:);
post_cont_hg_s1 = post1.label_ts(:,65,:);
post_cont_hg_s2 = post2.label_ts(:,65,:);
post_cont_hg_s3 = post3.label_ts(:,66,:);

post_cont_stg = [post1.label_ts(:,68,:); post2.label_ts(:,68,:); post3.label_ts(:,67,1:3000)];
post_ipsi_stg = [post1.label_ts(:,67,:); post2.label_ts(:,67,:); post3.label_ts(:,68,1:3000)];
post_ipsi_stg_s1 = post1.label_ts(:,68,:);
post_ipsi_stg_s2 = post2.label_ts(:,68,:);
post_ipsi_stg_s3 = post3.label_ts(:,67,:);
post_cont_stg_s1 = post1.label_ts(:,67,:);
post_cont_stg_s2 = post2.label_ts(:,67,:);
post_cont_stg_s3 = post3.label_ts(:,68,:);

post_cont_ifgop = [post1.label_ts(:,26,:); post2.label_ts(:,26,:); post3.label_ts(:,25,1:3000)];
post_ipsi_ifgop = [post1.label_ts(:,25,:); post2.label_ts(:,25,:); post3.label_ts(:,26,1:3000)];
post_ipsi_ifgop_s1 = post1.label_ts(:,26,:);
post_ipsi_ifgop_s2 = post2.label_ts(:,26,:);
post_ipsi_ifgop_s3 = post3.label_ts(:,25,:);
post_cont_ifgop_s1 = post1.label_ts(:,25,:);
post_cont_ifgop_s2 = post2.label_ts(:,25,:);
post_cont_ifgop_s3 = post3.label_ts(:,26,:);

post_cont_ifgor = [post1.label_ts(:,28,:); post2.label_ts(:,28,:); post3.label_ts(:,27,1:3000)];
post_ipsi_ifgor = [post1.label_ts(:,27,:); post2.label_ts(:,27,:); post3.label_ts(:,28,1:3000)];
post_ipsi_ifgor_s1 = post1.label_ts(:,28,:);
post_ipsi_ifgor_s2 = post2.label_ts(:,28,:);
post_ipsi_ifgor_s3 = post3.label_ts(:,27,:);
post_cont_ifgor_s1 = post1.label_ts(:,27,:);
post_cont_ifgor_s2 = post2.label_ts(:,27,:);
post_cont_ifgor_s3 = post3.label_ts(:,28,:);

post_cont_ifgtri = [post1.label_ts(:,30,:); post2.label_ts(:,30,:); post3.label_ts(:,29,1:3000)];
post_ipsi_ifgtri = [post1.label_ts(:,29,:); post2.label_ts(:,29,:); post3.label_ts(:,30,1:3000)];
post_ipsi_ifgtri_s1 = post1.label_ts(:,30,:);
post_ipsi_ifgtri_s2 = post2.label_ts(:,30,:);
post_ipsi_ifgtri_s3 = post3.label_ts(:,29,:);
post_cont_ifgtri_s1 = post1.label_ts(:,29,:);
post_cont_ifgtri_s2 = post2.label_ts(:,29,:);
post_cont_ifgtri_s3 = post3.label_ts(:,30,:);

post_cont_tp = [post1.label_ts(:,86,:); post2.label_ts(:,86,:); post3.label_ts(:,85,1:3000)];
post_cont_tp_s1 = post1.label_ts(:,86,:);
post_cont_tp_s2 = post2.label_ts(:,86,:);
post_cont_tp_s3 = post3.label_ts(:,85,:);

post_cont_hg_avg = abs(squeeze(mean(post_cont_hg,1)));
post_cont_hg_avg = post_cont_hg_avg(885:1500,:);
post_cont_hg_sem = squeeze(std(post_cont_hg,[],1)/sqrt(size(post_cont_hg,1)));
post_cont_hg_sem = post_cont_hg_sem(885:1500);

post_ipsi_hg_avg = abs(squeeze(mean(post_ipsi_hg,1)));
post_ipsi_hg_avg = post_ipsi_hg_avg(885:1500,:);
post_ipsi_hg_sem = squeeze(std(post_ipsi_hg,[],1)/sqrt(size(post_ipsi_hg,1)));
post_ipsi_hg_sem = post_ipsi_hg_sem(885:1500);

post_cont_stg_avg = abs(squeeze(mean(post_cont_stg,1)));
post_cont_stg_avg = post_cont_stg_avg(885:1500,:);
post_cont_stg_sem = squeeze(std(post_cont_stg,[],1)/sqrt(size(post_cont_stg,1)));
post_cont_stg_sem = post_cont_stg_sem(885:1500);

post_ipsi_stg_avg = abs(squeeze(mean(post_ipsi_stg,1)));
post_ipsi_stg_avg = post_ipsi_stg_avg(885:1500,:);
post_ipsi_stg_sem = squeeze(std(post_ipsi_stg,[],1)/sqrt(size(post_ipsi_stg,1)));
post_ipsi_stg_sem = post_ipsi_stg_sem(885:1500);

post_cont_ifgop_avg = abs(squeeze(mean(post_cont_ifgop,1)));
post_cont_ifgop_avg = post_cont_ifgop_avg(885:1500,:);
post_cont_ifgop_sem = squeeze(std(post_cont_ifgop,[],1)/sqrt(size(post_cont_ifgop,1)));
post_cont_ifgop_sem = post_cont_ifgop_sem(885:1500);

post_ipsi_ifgop_avg = abs(squeeze(mean(post_ipsi_ifgop,1)));
post_ipsi_ifgop_avg = post_ipsi_ifgop_avg(885:1500,:);
post_ipsi_ifgop_sem = squeeze(std(post_ipsi_ifgop,[],1)/sqrt(size(post_ipsi_ifgop,1)));
post_ipsi_ifgop_sem = post_ipsi_ifgop_sem(885:1500);

post_cont_ifgor_avg = abs(squeeze(mean(post_cont_ifgor,1)));
post_cont_ifgor_avg = post_cont_ifgor_avg(885:1500,:);
post_cont_ifgor_sem = squeeze(std(post_cont_ifgor,[],1)/sqrt(size(post_cont_ifgor,1)));
post_cont_ifgor_sem = post_cont_ifgor_sem(885:1500);

post_ipsi_ifgor_avg = abs(squeeze(mean(post_ipsi_ifgor,1)));
post_ipsi_ifgor_avg = post_ipsi_ifgor_avg(885:1500,:);
post_ipsi_ifgor_sem = squeeze(std(post_ipsi_ifgor,[],1)/sqrt(size(post_ipsi_ifgor,1)));
post_ipsi_ifgor_sem = post_ipsi_ifgor_sem(885:1500);

post_cont_ifgtri_avg = abs(squeeze(mean(post_cont_ifgtri,1)));
post_cont_ifgtri_avg = post_cont_ifgtri_avg(885:1500,:);
post_cont_ifgtri_sem = squeeze(std(post_cont_ifgtri,[],1)/sqrt(size(post_cont_ifgtri,1)));
post_cont_ifgtri_sem = post_cont_ifgtri_sem(885:1500);

post_ipsi_ifgtri_avg = abs(squeeze(mean(post_ipsi_ifgtri,1)));
post_ipsi_ifgtri_avg = post_ipsi_ifgtri_avg(885:1500,:);
post_ipsi_ifgtri_sem = squeeze(std(post_ipsi_ifgtri,[],1)/sqrt(size(post_ipsi_ifgtri,1)));
post_ipsi_ifgtri_sem = post_ipsi_ifgtri_sem(885:1500);

post_cont_tp_avg = abs(squeeze(mean(post_cont_tp,1)));
post_cont_tp_avg = post_cont_tp_avg(885:1500,:);
post_cont_tp_sem = squeeze(std(post_cont_tp,[],1)/sqrt(size(post_cont_tp,1)));
post_cont_tp_sem = post_cont_tp_sem(885:1500);

%% now, let's calculate the post 6+ months values
post21 = load('./data/P1_post6_target_3-30Hz_a2009s.mat');
post22 = load('./data/P2_post6_target_3-30Hz_a2009s.mat');
post23 = load('./data/P3_post6_target_3-30Hz_a2009s.mat');

post2_cont_hg = [post21.label_ts(:,66,:); post22.label_ts(:,66,:); post23.label_ts(:,65,1:3000)];
post2_ipsi_hg = [post21.label_ts(:,65,:); post22.label_ts(:,65,:); post23.label_ts(:,66,1:3000)];
post2_ipsi_hg_s1 = post21.label_ts(:,66,:);
post2_ipsi_hg_s2 = post22.label_ts(:,66,:);
post2_ipsi_hg_s3 = post23.label_ts(:,65,:);
post2_cont_hg_s1 = post21.label_ts(:,65,:);
post2_cont_hg_s2 = post22.label_ts(:,65,:);
post2_cont_hg_s3 = post23.label_ts(:,66,:);

post2_cont_stg = [post21.label_ts(:,68,:); post22.label_ts(:,68,:); post23.label_ts(:,67,1:3000)];
post2_ipsi_stg = [post21.label_ts(:,67,:); post22.label_ts(:,67,:); post23.label_ts(:,68,1:3000)];
post2_ipsi_stg_s1 = post21.label_ts(:,68,:);
post2_ipsi_stg_s2 = post22.label_ts(:,68,:);
post2_ipsi_stg_s3 = post23.label_ts(:,67,:);
post2_cont_stg_s1 = post21.label_ts(:,67,:);
post2_cont_stg_s2 = post22.label_ts(:,67,:);
post2_cont_stg_s3 = post23.label_ts(:,68,:);

post2_cont_ifgop = [post21.label_ts(:,26,:); post22.label_ts(:,26,:); post23.label_ts(:,25,1:3000)];
post2_ipsi_ifgop = [post21.label_ts(:,25,:); post22.label_ts(:,25,:); post23.label_ts(:,26,1:3000)];
post2_ipsi_ifgop_s1 = post21.label_ts(:,26,:);
post2_ipsi_ifgop_s2 = post22.label_ts(:,26,:);
post2_ipsi_ifgop_s3 = post23.label_ts(:,25,:);
post2_cont_ifgop_s1 = post21.label_ts(:,25,:);
post2_cont_ifgop_s2 = post22.label_ts(:,25,:);
post2_cont_ifgop_s3 = post23.label_ts(:,26,:);

post2_cont_ifgor = [post21.label_ts(:,28,:); post22.label_ts(:,28,:); post23.label_ts(:,27,1:3000)];
post2_ipsi_ifgor = [post21.label_ts(:,27,:); post22.label_ts(:,27,:); post23.label_ts(:,28,1:3000)];
post2_ipsi_ifgor_s1 = post21.label_ts(:,28,:);
post2_ipsi_ifgor_s2 = post22.label_ts(:,28,:);
post2_ipsi_ifgor_s3 = post23.label_ts(:,27,:);
post2_cont_ifgor_s1 = post21.label_ts(:,27,:);
post2_cont_ifgor_s2 = post22.label_ts(:,27,:);
post2_cont_ifgor_s3 = post23.label_ts(:,28,:);

post2_cont_ifgtri = [post21.label_ts(:,30,:); post22.label_ts(:,30,:); post23.label_ts(:,29,1:3000)];
post2_ipsi_ifgtri = [post21.label_ts(:,29,:); post22.label_ts(:,29,:); post23.label_ts(:,30,1:3000)];
post2_ipsi_ifgtri_s1 = post21.label_ts(:,30,:);
post2_ipsi_ifgtri_s2 = post22.label_ts(:,30,:);
post2_ipsi_ifgtri_s3 = post23.label_ts(:,29,:);
post2_cont_ifgtri_s1 = post21.label_ts(:,29,:);
post2_cont_ifgtri_s2 = post22.label_ts(:,29,:);
post2_cont_ifgtri_s3 = post23.label_ts(:,30,:);

post2_cont_tp = [post21.label_ts(:,86,:); post22.label_ts(:,86,:); post23.label_ts(:,85,1:3000)];
post2_cont_tp_s1 = post21.label_ts(:,86,:);
post2_cont_tp_s2 = post22.label_ts(:,86,:);
post2_cont_tp_s3 = post23.label_ts(:,85,:);

post2_cont_hg_avg = abs(squeeze(mean(post2_cont_hg,1)));
post2_cont_hg_avg = post2_cont_hg_avg(885:1500,:);
post2_cont_hg_sem = squeeze(std(post2_cont_hg,[],1)/sqrt(size(post2_cont_hg,1)));
post2_cont_hg_sem = post2_cont_hg_sem(885:1500);

post2_ipsi_hg_avg = abs(squeeze(mean(post2_ipsi_hg,1)));
post2_ipsi_hg_avg = post2_ipsi_hg_avg(885:1500,:);
post2_ipsi_hg_sem = squeeze(std(post2_ipsi_hg,[],1)/sqrt(size(post2_ipsi_hg,1)));
post2_ipsi_hg_sem = post2_ipsi_hg_sem(885:1500);

post2_cont_stg_avg = abs(squeeze(mean(post2_cont_stg,1)));
post2_cont_stg_avg = post2_cont_stg_avg(885:1500,:);
post2_cont_stg_sem = squeeze(std(post2_cont_stg,[],1)/sqrt(size(post2_cont_stg,1)));
post2_cont_stg_sem = post2_cont_stg_sem(885:1500);

post2_ipsi_stg_avg = abs(squeeze(mean(post2_ipsi_stg,1)));
post2_ipsi_stg_avg = post2_ipsi_stg_avg(885:1500,:);
post2_ipsi_stg_sem = squeeze(std(post2_ipsi_stg,[],1)/sqrt(size(post2_ipsi_stg,1)));
post2_ipsi_stg_sem = post2_ipsi_stg_sem(885:1500);

post2_cont_ifgop_avg = abs(squeeze(mean(post2_cont_ifgop,1)));
post2_cont_ifgop_avg = post2_cont_ifgop_avg(885:1500,:);
post2_cont_ifgop_sem = squeeze(std(post2_cont_ifgop,[],1)/sqrt(size(post2_cont_ifgop,1)));
post2_cont_ifgop_sem = post2_cont_ifgop_sem(885:1500);

post2_ipsi_ifgop_avg = abs(squeeze(mean(post2_ipsi_ifgop,1)));
post2_ipsi_ifgop_avg = post2_ipsi_ifgop_avg(885:1500,:);
post2_ipsi_ifgop_sem = squeeze(std(post2_ipsi_ifgop,[],1)/sqrt(size(post2_ipsi_ifgop,1)));
post2_ipsi_ifgop_sem = post2_ipsi_ifgop_sem(885:1500);

post2_cont_ifgor_avg = abs(squeeze(mean(post2_cont_ifgor,1)));
post2_cont_ifgor_avg = post2_cont_ifgor_avg(885:1500,:);
post2_cont_ifgor_sem = squeeze(std(post2_cont_ifgor,[],1)/sqrt(size(post2_cont_ifgor,1)));
post2_cont_ifgor_sem = post2_cont_ifgor_sem(885:1500);

post2_ipsi_ifgor_avg = abs(squeeze(mean(post2_ipsi_ifgor,1)));
post2_ipsi_ifgor_avg = post2_ipsi_ifgor_avg(885:1500,:);
post2_ipsi_ifgor_sem = squeeze(std(post2_ipsi_ifgor,[],1)/sqrt(size(post2_ipsi_ifgor,1)));
post2_ipsi_ifgor_sem = post2_ipsi_ifgor_sem(885:1500);

post2_cont_ifgtri_avg = abs(squeeze(mean(post2_cont_ifgtri,1)));
post2_cont_ifgtri_avg = post2_cont_ifgtri_avg(885:1500,:);
post2_cont_ifgtri_sem = squeeze(std(post2_cont_ifgtri,[],1)/sqrt(size(post2_cont_ifgtri,1)));
post2_cont_ifgtri_sem = post2_cont_ifgtri_sem(885:1500);

post2_ipsi_ifgtri_avg = abs(squeeze(mean(post2_ipsi_ifgtri,1)));
post2_ipsi_ifgtri_avg = post2_ipsi_ifgtri_avg(885:1500,:);
post2_ipsi_ifgtri_sem = squeeze(std(post2_ipsi_ifgtri,[],1)/sqrt(size(post2_ipsi_ifgtri,1)));
post2_ipsi_ifgtri_sem = post2_ipsi_ifgtri_sem(885:1500);

post2_cont_tp_avg = abs(squeeze(mean(post2_cont_tp,1)));
post2_cont_tp_avg = post2_cont_tp_avg(885:1500,:);
post2_cont_tp_sem = squeeze(std(post2_cont_tp,[],1)/sqrt(size(post2_cont_tp,1)));
post2_cont_tp_sem = post2_cont_tp_sem(885:1500);

%% statistically compare pre vs post 2 mos, only using 500 ms post-target onset as time window for significance
[clusters_cont_hg_s1 ] = permutest(squeeze(pre_cont_hg_s1(:,:,1000:1500))', squeeze(post_cont_hg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s1 ] = permutest(squeeze(pre_ipsi_hg_s1(:,:,1000:1500))', squeeze(post_ipsi_hg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_hg_s2 ] = permutest(squeeze(pre_cont_hg_s2(:,:,1000:1500))', squeeze(post_cont_hg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s2 ] = permutest(squeeze(pre_ipsi_hg_s2(:,:,1000:1500))', squeeze(post_ipsi_hg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_hg_s3 ] = permutest(squeeze(pre_cont_hg_s3(:,:,1000:1500))', squeeze(post_cont_hg_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s3 ] = permutest(squeeze(pre_ipsi_hg_s3(:,:,1000:1500))', squeeze(post_ipsi_hg_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_stg_s1 ] = permutest(squeeze(pre_cont_stg_s1(:,:,1000:1500))', squeeze(post_cont_stg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s1 ] = permutest(squeeze(pre_ipsi_stg_s1(:,:,1000:1500))', squeeze(post_ipsi_stg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_stg_s2 ] = permutest(squeeze(pre_cont_stg_s2(:,:,1000:1500))', squeeze(post_cont_stg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s2 ] = permutest(squeeze(pre_ipsi_stg_s2(:,:,1000:1500))', squeeze(post_ipsi_stg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_stg_s3 ] = permutest(squeeze(pre_cont_stg_s3(:,:,1000:1500))', squeeze(post_cont_stg_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s3 ] = permutest(squeeze(pre_ipsi_stg_s3(:,:,1000:1500))', squeeze(post_ipsi_stg_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgtri_s1 ] = permutest(squeeze(pre_cont_ifgtri_s1(:,:,1000:1500))', squeeze(post_cont_ifgtri_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s1 ] = permutest(squeeze(pre_ipsi_ifgtri_s1(:,:,1000:1500))', squeeze(post_ipsi_ifgtri_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgtri_s2 ] = permutest(squeeze(pre_cont_ifgtri_s2(:,:,1000:1500))', squeeze(post_cont_ifgtri_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s2 ] = permutest(squeeze(pre_ipsi_ifgtri_s2(:,:,1000:1500))', squeeze(post_ipsi_ifgtri_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgtri_s3 ] = permutest(squeeze(pre_cont_ifgtri_s3(:,:,1000:1500))', squeeze(post_cont_ifgtri_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s3 ] = permutest(squeeze(pre_ipsi_ifgtri_s3(:,:,1000:1500))', squeeze(post_ipsi_ifgtri_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgop_s1 ] = permutest(squeeze(pre_cont_ifgop_s1(:,:,1000:1500))', squeeze(post_cont_ifgop_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s1 ] = permutest(squeeze(pre_ipsi_ifgop_s1(:,:,1000:1500))', squeeze(post_ipsi_ifgop_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgop_s2 ] = permutest(squeeze(pre_cont_ifgop_s2(:,:,1000:1500))', squeeze(post_cont_ifgop_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s2 ] = permutest(squeeze(pre_ipsi_ifgop_s2(:,:,1000:1500))', squeeze(post_ipsi_ifgop_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgop_s3 ] = permutest(squeeze(pre_cont_ifgop_s3(:,:,1000:1500))', squeeze(post_cont_ifgop_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s3 ] = permutest(squeeze(pre_ipsi_ifgop_s3(:,:,1000:1500))', squeeze(post_ipsi_ifgop_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgor_s1 ] = permutest(squeeze(pre_cont_ifgor_s1(:,:,1000:1500))', squeeze(post_cont_ifgor_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s1 ] = permutest(squeeze(pre_ipsi_ifgor_s1(:,:,1000:1500))', squeeze(post_ipsi_ifgor_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgor_s2 ] = permutest(squeeze(pre_cont_ifgor_s2(:,:,1000:1500))', squeeze(post_cont_ifgor_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s2 ] = permutest(squeeze(pre_ipsi_ifgor_s2(:,:,1000:1500))', squeeze(post_ipsi_ifgor_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgor_s3 ] = permutest(squeeze(pre_cont_ifgor_s3(:,:,1000:1500))', squeeze(post_cont_ifgor_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s3 ] = permutest(squeeze(pre_ipsi_ifgor_s3(:,:,1000:1500))', squeeze(post_ipsi_ifgor_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_tp_s1 ] = permutest(squeeze(pre_cont_tp_s1(:,:,1000:1500))', squeeze(post_cont_tp_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_tp_s2 ] = permutest(squeeze(pre_cont_tp_s2(:,:,1000:1500))', squeeze(post_cont_tp_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_tp_s3 ] = permutest(squeeze(pre_cont_tp_s3(:,:,1000:1500))', squeeze(post_cont_tp_s2(:,:,1000:1500))',false, 0.05, 2000, false);

% statistically compare  pre vs post6mo
[clusters_cont_hg_s1_2 ] = permutest(squeeze(pre_cont_hg_s1(:,:,1000:1500))', squeeze(post2_cont_hg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s1_2 ] = permutest(squeeze(pre_ipsi_hg_s1(:,:,1000:1500))', squeeze(post2_ipsi_hg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_hg_s2_2 ] = permutest(squeeze(pre_cont_hg_s2(:,:,1000:1500))', squeeze(post2_cont_hg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s2_2 ] = permutest(squeeze(pre_ipsi_hg_s2(:,:,1000:1500))', squeeze(post2_ipsi_hg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_hg_s3_2 ] = permutest(squeeze(pre_cont_hg_s3(:,:,1000:1500))', squeeze(post2_cont_hg_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s3_2 ] = permutest(squeeze(pre_ipsi_hg_s3(:,:,1000:1500))', squeeze(post2_ipsi_hg_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_stg_s1_2 ] = permutest(squeeze(pre_cont_stg_s1(:,:,1000:1500))', squeeze(post2_cont_stg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s1_2 ] = permutest(squeeze(pre_ipsi_stg_s1(:,:,1000:1500))', squeeze(post2_ipsi_stg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_stg_s2_2 ] = permutest(squeeze(pre_cont_stg_s2(:,:,1000:1500))', squeeze(post2_cont_stg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s2_2 ] = permutest(squeeze(pre_ipsi_stg_s2(:,:,1000:1500))', squeeze(post2_ipsi_stg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_stg_s3_2 ] = permutest(squeeze(pre_cont_stg_s3(:,:,1000:1500))', squeeze(post2_cont_stg_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s3_2 ] = permutest(squeeze(pre_ipsi_stg_s3(:,:,1000:1500))', squeeze(post2_ipsi_stg_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgtri_s1_2 ] = permutest(squeeze(pre_cont_ifgtri_s1(:,:,1000:1500))', squeeze(post2_cont_ifgtri_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s1_2 ] = permutest(squeeze(pre_ipsi_ifgtri_s1(:,:,1000:1500))', squeeze(post2_ipsi_ifgtri_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgtri_s2_2 ] = permutest(squeeze(pre_cont_ifgtri_s2(:,:,1000:1500))', squeeze(post2_cont_ifgtri_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s2_2 ] = permutest(squeeze(pre_ipsi_ifgtri_s2(:,:,1000:1500))', squeeze(post2_ipsi_ifgtri_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgtri_s3_2 ] = permutest(squeeze(pre_cont_ifgtri_s3(:,:,1000:1500))', squeeze(post2_cont_ifgtri_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s3_2 ] = permutest(squeeze(pre_ipsi_ifgtri_s3(:,:,1000:1500))', squeeze(post2_ipsi_ifgtri_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgop_s1_2 ] = permutest(squeeze(pre_cont_ifgop_s1(:,:,1000:1500))', squeeze(post2_cont_ifgop_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s1_2 ] = permutest(squeeze(pre_ipsi_ifgop_s1(:,:,1000:1500))', squeeze(post2_ipsi_ifgop_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgop_s2_2 ] = permutest(squeeze(pre_cont_ifgop_s2(:,:,1000:1500))', squeeze(post2_cont_ifgop_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s2_2 ] = permutest(squeeze(pre_ipsi_ifgop_s2(:,:,1000:1500))', squeeze(post2_ipsi_ifgop_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgop_s3_2 ] = permutest(squeeze(pre_cont_ifgop_s3(:,:,1000:1500))', squeeze(post2_cont_ifgop_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s3_2 ] = permutest(squeeze(pre_ipsi_ifgop_s3(:,:,1000:1500))', squeeze(post2_ipsi_ifgop_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgor_s1_2 ] = permutest(squeeze(pre_cont_ifgor_s1(:,:,1000:1500))', squeeze(post2_cont_ifgor_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s1_2 ] = permutest(squeeze(pre_ipsi_ifgor_s1(:,:,1000:1500))', squeeze(post2_ipsi_ifgor_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgor_s2_2 ] = permutest(squeeze(pre_cont_ifgor_s2(:,:,1000:1500))', squeeze(post2_cont_ifgor_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s2_2 ] = permutest(squeeze(pre_ipsi_ifgor_s2(:,:,1000:1500))', squeeze(post2_ipsi_ifgor_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgor_s3_2 ] = permutest(squeeze(pre_cont_ifgor_s3(:,:,1000:1500))', squeeze(post2_cont_ifgor_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s3_2 ] = permutest(squeeze(pre_ipsi_ifgor_s3(:,:,1000:1500))', squeeze(post2_ipsi_ifgor_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_tp_s1_2 ] = permutest(squeeze(pre_cont_tp_s1(:,:,1000:1500))', squeeze(post2_cont_tp_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_tp_s2_2 ] = permutest(squeeze(pre_cont_tp_s2(:,:,1000:1500))', squeeze(post2_cont_tp_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_tp_s3_2 ] = permutest(squeeze(pre_cont_tp_s3(:,:,1000:1500))', squeeze(post2_cont_tp_s2(:,:,1000:1500))',false, 0.05, 2000, false);

% statistically compare post2mo vs post6mo
[clusters_cont_hg_s1_3 ] = permutest(squeeze(post_cont_hg_s1(:,:,1000:1500))', squeeze(post2_cont_hg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s1_3 ] = permutest(squeeze(post_ipsi_hg_s1(:,:,1000:1500))', squeeze(post2_ipsi_hg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_hg_s2_3 ] = permutest(squeeze(post_cont_hg_s2(:,:,1000:1500))', squeeze(post2_cont_hg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s2_3 ] = permutest(squeeze(post_ipsi_hg_s2(:,:,1000:1500))', squeeze(post2_ipsi_hg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_hg_s3_3 ] = permutest(squeeze(post_cont_hg_s3(:,:,1000:1500))', squeeze(post2_cont_hg_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_hg_s3_3 ] = permutest(squeeze(post_ipsi_hg_s3(:,:,1000:1500))', squeeze(post2_ipsi_hg_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_stg_s1_3 ] = permutest(squeeze(post_cont_stg_s1(:,:,1000:1500))', squeeze(post2_cont_stg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s1_3 ] = permutest(squeeze(post_ipsi_stg_s1(:,:,1000:1500))', squeeze(post2_ipsi_stg_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_stg_s2_3 ] = permutest(squeeze(post_cont_stg_s2(:,:,1000:1500))', squeeze(post2_cont_stg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s2_3 ] = permutest(squeeze(post_ipsi_stg_s2(:,:,1000:1500))', squeeze(post2_ipsi_stg_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_stg_s3_3 ] = permutest(squeeze(post_cont_stg_s3(:,:,1000:1500))', squeeze(post2_cont_stg_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_stg_s3_3 ] = permutest(squeeze(post_ipsi_stg_s3(:,:,1000:1500))', squeeze(post2_ipsi_stg_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgtri_s1_3 ] = permutest(squeeze(post_cont_ifgtri_s1(:,:,1000:1500))', squeeze(post2_cont_ifgtri_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s1_3 ] = permutest(squeeze(post_ipsi_ifgtri_s1(:,:,1000:1500))', squeeze(post2_ipsi_ifgtri_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgtri_s2_3 ] = permutest(squeeze(post_cont_ifgtri_s2(:,:,1000:1500))', squeeze(post2_cont_ifgtri_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s2_3 ] = permutest(squeeze(post_ipsi_ifgtri_s2(:,:,1000:1500))', squeeze(post2_ipsi_ifgtri_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgtri_s3_3 ] = permutest(squeeze(post_cont_ifgtri_s3(:,:,1000:1500))', squeeze(post2_cont_ifgtri_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgtri_s3_3 ] = permutest(squeeze(post_ipsi_ifgtri_s3(:,:,1000:1500))', squeeze(post2_ipsi_ifgtri_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgop_s1_3 ] = permutest(squeeze(post_cont_ifgop_s1(:,:,1000:1500))', squeeze(post2_cont_ifgop_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s1_3 ] = permutest(squeeze(post_ipsi_ifgop_s1(:,:,1000:1500))', squeeze(post2_ipsi_ifgop_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgop_s2_3 ] = permutest(squeeze(post_cont_ifgop_s2(:,:,1000:1500))', squeeze(post2_cont_ifgop_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s2_3 ] = permutest(squeeze(post_ipsi_ifgop_s2(:,:,1000:1500))', squeeze(post2_ipsi_ifgop_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgop_s3_3] = permutest(squeeze(post_cont_ifgop_s3(:,:,1000:1500))', squeeze(post2_cont_ifgop_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgop_s3_3 ] = permutest(squeeze(post_ipsi_ifgop_s3(:,:,1000:1500))', squeeze(post2_ipsi_ifgop_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_ifgor_s1_3 ] = permutest(squeeze(post_cont_ifgor_s1(:,:,1000:1500))', squeeze(post2_cont_ifgor_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s1_3 ] = permutest(squeeze(post_ipsi_ifgor_s1(:,:,1000:1500))', squeeze(post2_ipsi_ifgor_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgor_s2_3 ] = permutest(squeeze(post_cont_ifgor_s2(:,:,1000:1500))', squeeze(post2_cont_ifgor_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s2_3 ] = permutest(squeeze(post_ipsi_ifgor_s2(:,:,1000:1500))', squeeze(post2_ipsi_ifgor_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_ifgor_s3_3 ] = permutest(squeeze(post_cont_ifgor_s3(:,:,1000:1500))', squeeze(post2_cont_ifgor_s3(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_ipsi_ifgor_s3_3 ] = permutest(squeeze(post_ipsi_ifgor_s3(:,:,1000:1500))', squeeze(post2_ipsi_ifgor_s3(:,:,1000:1500))',false, 0.05, 2000, false);

[clusters_cont_tp_s1_3 ] = permutest(squeeze(post_cont_tp_s1(:,:,1000:1500))', squeeze(post2_cont_tp_s1(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_tp_s2_3 ] = permutest(squeeze(post_cont_tp_s2(:,:,1000:1500))', squeeze(post2_cont_tp_s2(:,:,1000:1500))',false, 0.05, 2000, false);
[clusters_cont_tp_s3_3 ] = permutest(squeeze(post_cont_tp_s3(:,:,1000:1500))', squeeze(post2_cont_tp_s2(:,:,1000:1500))',false, 0.05, 2000, false);

%% plot figure
figure(1)
set(gcf, 'Position', get(0, 'Screensize')); % full screen figure

% this is for the position of significance lines
linepl1 = -0.05;
linepl2 = -0.07;
linepl3 = -0.09;

% each region has its own subplot
subplot(6,2,1)
shadedErrorBar(time, pre_ipsi_hg_avg, pre_ipsi_hg_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_ipsi_hg_avg, post_ipsi_hg_sem, 'lineprops','r');
shadedErrorBar(time, post2_ipsi_hg_avg, post2_ipsi_hg_sem, 'lineprops','g');
ylim([-0.1 0.2])

%pre vs post2
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s1,2)
    if size(clusters_ipsi_hg_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s1{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s2,2)
    if size(clusters_ipsi_hg_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s3,2)
    if size(clusters_ipsi_hg_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    elseif summed(1,m) == 0
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s1_2,2)
    if size(clusters_ipsi_hg_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s2_2,2)
    if size(clusters_ipsi_hg_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s3_2,2)
    if size(clusters_ipsi_hg_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s1_3,2)
    if size(clusters_ipsi_hg_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s2_3,2)
    if size(clusters_ipsi_hg_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_hg_s3_3,2)
    if size(clusters_ipsi_hg_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_hg_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_hg_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1 0.2]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1', '0.2'});
title('Ipsi HG')

subplot(6,2,2)
shadedErrorBar(time, pre_cont_hg_avg, pre_cont_hg_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_cont_hg_avg, post_cont_hg_sem, 'lineprops','r');
shadedErrorBar(time, post2_cont_hg_avg, post2_cont_hg_sem, 'lineprops','g');
ylim([-0.1 0.2])

%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s1,2)
    if size(clusters_cont_hg_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s1{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s2,2)
    if size(clusters_cont_hg_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s3,2)
    if size(clusters_cont_hg_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s1_2,2)
    if size(clusters_cont_hg_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s2_2,2)
    if size(clusters_cont_hg_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s3_2,2)
    if size(clusters_cont_hg_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s1_3,2)
    if size(clusters_cont_hg_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s2_3,2)
    if size(clusters_cont_hg_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_hg_s3_3,2)
    if size(clusters_cont_hg_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_hg_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_hg_s3_3);


for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1 0.2]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1', '0.2'});
title('Cont HG')

subplot(6,2,3)
shadedErrorBar(time, pre_ipsi_ifgtri_avg, pre_ipsi_ifgtri_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_ipsi_ifgtri_avg, post_ipsi_ifgtri_sem, 'lineprops','r');
shadedErrorBar(time, post2_ipsi_ifgtri_avg, post2_ipsi_ifgtri_sem, 'lineprops','g');
ylim([-0.1 0.1])
%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s1,2)
    if size(clusters_ipsi_ifgtri_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s1{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s2,2)
    if size(clusters_ipsi_ifgtri_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s3,2)
    if size(clusters_ipsi_ifgtri_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s1_2,2)
    if size(clusters_ipsi_ifgtri_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s2_2,2)
    if size(clusters_ipsi_ifgtri_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s3_2,2)
    if size(clusters_ipsi_ifgtri_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s1_3,2)
    if size(clusters_ipsi_ifgtri_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s2_3,2)
    if size(clusters_ipsi_ifgtri_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgtri_s3_3,2)
    if size(clusters_ipsi_ifgtri_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgtri_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgtri_s3_3);


for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Ipsi IFGtri')

subplot(6,2,4)
shadedErrorBar(time, pre_cont_ifgtri_avg, pre_cont_ifgtri_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_cont_ifgtri_avg, post_cont_ifgtri_sem, 'lineprops','r');
shadedErrorBar(time, post2_cont_ifgtri_avg, post2_cont_ifgtri_sem, 'lineprops','g');
ylim([-0.1 0.1])

%pre vs post2
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s1,2)
    if size(clusters_cont_ifgtri_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s1{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s2,2)
    if size(clusters_cont_ifgtri_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s3,2)
    if size(clusters_cont_ifgtri_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s1_2,2)
    if size(clusters_cont_ifgtri_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s2_2,2)
    if size(clusters_cont_ifgtri_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s3_2,2)
    if size(clusters_cont_ifgtri_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s1_3,2)
    if size(clusters_cont_ifgtri_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s2_3,2)
    if size(clusters_cont_ifgtri_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgtri_s3_3,2)
    if size(clusters_cont_ifgtri_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgtri_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgtri_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Cont IFGtri')

subplot(6,2,5)
shadedErrorBar(time, pre_ipsi_ifgop_avg, pre_ipsi_ifgop_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_ipsi_ifgop_avg, post_ipsi_ifgop_sem, 'lineprops','r');
shadedErrorBar(time, post2_ipsi_ifgop_avg, post2_ipsi_ifgop_sem, 'lineprops','g');
ylim([-0.1 0.1])
%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s1,2)
    if size(clusters_ipsi_ifgop_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s1{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s2,2)
    if size(clusters_ipsi_ifgop_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s3,2)
    if size(clusters_ipsi_ifgop_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s1_2,2)
    if size(clusters_ipsi_ifgop_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s2_2,2)
    if size(clusters_ipsi_ifgop_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s3_2,2)
    if size(clusters_ipsi_ifgop_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s1_3,2)
    if size(clusters_ipsi_ifgop_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s2_3,2)
    if size(clusters_ipsi_ifgop_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgop_s3_3,2)
    if size(clusters_ipsi_ifgop_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgop_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgop_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Ipsi IFGop')

subplot(6,2,6)
shadedErrorBar(time, pre_cont_ifgop_avg, pre_cont_ifgop_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_cont_ifgop_avg, post_cont_ifgop_sem, 'lineprops','r');
shadedErrorBar(time, post2_cont_ifgop_avg, post2_cont_ifgop_sem, 'lineprops','g');
ylim([-0.1 0.1])
%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s1,2)
    if size(clusters_cont_ifgop_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s1{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s2,2)
    if size(clusters_cont_ifgop_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s3,2)
    if size(clusters_cont_ifgop_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s1_2,2)
    if size(clusters_cont_ifgop_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s2_2,2)
    if size(clusters_cont_ifgop_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s3_2,2)
    if size(clusters_cont_ifgop_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s1_3,2)
    if size(clusters_cont_ifgop_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s2_3,2)
    if size(clusters_cont_ifgop_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgop_s3_3,2)
    if size(clusters_cont_ifgop_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgop_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgop_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Cont IFGop')

subplot(6,2,7)
shadedErrorBar(time, pre_ipsi_ifgor_avg, pre_ipsi_ifgor_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_ipsi_ifgor_avg, post_ipsi_ifgor_sem, 'lineprops','r');
shadedErrorBar(time, post2_ipsi_ifgor_avg, post2_ipsi_ifgor_sem, 'lineprops','g');
ylim([-0.1 0.1])

%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s1,2)
    if size(clusters_ipsi_ifgor_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s1{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s2,2)
    if size(clusters_ipsi_ifgor_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s3,2)
    if size(clusters_ipsi_ifgor_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s1_2,2)
    if size(clusters_ipsi_ifgor_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s2_2,2)
    if size(clusters_ipsi_ifgor_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s3_2,2)
    if size(clusters_ipsi_ifgor_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s1_3,2)
    if size(clusters_ipsi_ifgor_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s2_3,2)
    if size(clusters_ipsi_ifgor_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_ifgor_s3_3,2)
    if size(clusters_ipsi_ifgor_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_ifgor_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_ifgor_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Ipsi IFGor')

subplot(6,2,8)
shadedErrorBar(time, pre_cont_ifgor_avg, pre_cont_ifgor_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_cont_ifgor_avg, post_cont_ifgor_sem, 'lineprops','r');
shadedErrorBar(time, post2_cont_ifgor_avg, post2_cont_ifgor_sem, 'lineprops','g');
ylim([-0.1 0.1])
%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s1,2)
    if size(clusters_cont_ifgor_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s1{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s2,2)
    if size(clusters_cont_ifgor_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s3,2)
    if size(clusters_cont_ifgor_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s1_2,2)
    if size(clusters_cont_ifgor_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s2_2,2)
    if size(clusters_cont_ifgor_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s3_2,2)
    if size(clusters_cont_ifgor_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s1_3,2)
    if size(clusters_cont_ifgor_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s2_3,2)
    if size(clusters_cont_ifgor_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_ifgor_s3_3,2)
    if size(clusters_cont_ifgor_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_ifgor_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_ifgor_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Cont IFGor')

subplot(6,2,9)
shadedErrorBar(time, pre_ipsi_stg_avg, pre_ipsi_stg_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_ipsi_stg_avg, post_ipsi_stg_sem, 'lineprops','r');
shadedErrorBar(time, post2_ipsi_stg_avg, post2_ipsi_stg_sem, 'lineprops','g');
ylim([-0.1 0.1])
%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s1,2)
    if size(clusters_ipsi_stg_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s1{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s2,2)
    if size(clusters_ipsi_stg_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s3,2)
    if size(clusters_ipsi_stg_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s1_2,2)
    if size(clusters_ipsi_stg_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s2_2,2)
    if size(clusters_ipsi_stg_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s3_2,2)
    if size(clusters_ipsi_stg_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s1_3,2)
    if size(clusters_ipsi_stg_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s2_3,2)
    if size(clusters_ipsi_stg_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_ipsi_stg_s3_3,2)
    if size(clusters_ipsi_stg_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_ipsi_stg_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_ipsi_stg_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Ipsi STG')

subplot(6,2,10)
shadedErrorBar(time, pre_cont_stg_avg, pre_cont_stg_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_cont_stg_avg, post_cont_stg_sem, 'lineprops','r');
shadedErrorBar(time, post2_cont_stg_avg, post2_cont_stg_sem, 'lineprops','g');
ylim([-0.1 0.1])
%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s1,2)
    if size(clusters_cont_stg_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s1{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s2,2)
    if size(clusters_cont_stg_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s3,2)
    if size(clusters_cont_stg_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s1_2,2)
    if size(clusters_cont_stg_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s2_2,2)
    if size(clusters_cont_stg_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s3_2,2)
    if size(clusters_cont_stg_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s1_3,2)
    if size(clusters_cont_stg_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s2_3,2)
    if size(clusters_cont_stg_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_stg_s3_3,2)
    if size(clusters_cont_stg_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_stg_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_stg_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Cont STG')

subplot(6,2,12)
shadedErrorBar(time, pre_cont_tp_avg, pre_cont_tp_sem, 'lineprops','b');
hold on
shadedErrorBar(time, post_cont_tp_avg, post_cont_tp_sem, 'lineprops','r');
shadedErrorBar(time, post2_cont_tp_avg, post2_cont_tp_sem, 'lineprops','g');
ylim([-0.1 0.1])
%pre vs post
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s1,2)
    if size(clusters_cont_tp_s1{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s1{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s1);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s2,2)
    if size(clusters_cont_tp_s2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s3,2)
    if size(clusters_cont_tp_s3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl1 linepl1], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl1 linepl1], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl1 linepl1], 'Color', [0 0 0 ], 'LineWidth', 3);
    elseif summed(1,m) == 0
        continue
    end
end

%pre vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s1_2,2)
    if size(clusters_cont_tp_s1_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s1_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s1_2);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s2_2,2)
    if size(clusters_cont_tp_s2_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s2_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s2_2);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s3_2,2)
    if size(clusters_cont_tp_s3_2{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s3_2{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s3_2);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl2 linepl2], 'Color', [0.3 0.3 0.3], 'LineWidth', 3);
    elseif summed(1,m) == 2
        line([m m+1], [linepl2 linepl2], 'Color', [.7 .7 .7], 'LineWidth', 3);
    elseif summed(1,m) == 3
        line([m m+1], [linepl2 linepl2], 'Color', [0 0 0 ], 'LineWidth', 3);
    else 
        continue
    end
end

%post2 vs post6
vect1 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s1_3,2)
    if size(clusters_cont_tp_s1_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s1_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s1_3);

for k = 1:size(new,2)
    vect1(1,new(k)+115) = 1; 
end

vect2 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s2_3,2)
    if size(clusters_cont_tp_s2_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s2_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s2_3);

for k = 1:size(new,2)
    vect2(1,new(k)+115) = 1; 
end

vect3 = zeros(1,616); 

for i = 1:size(clusters_cont_tp_s3_3,2)
    if size(clusters_cont_tp_s3_3{1,i},2) >= minSize 
        continue        
    else
        clusters_cont_tp_s3_3{1,i} = [];
    end
end
new = cell2mat(clusters_cont_tp_s3_3);

for k = 1:size(new,2)
    vect3(1,new(k)+115) = 1; 
end

summed = vect1+vect2+vect3;

for m = 1:size(summed,2)
    if summed(1,m) == 1
        line([m m+1], [linepl3 linepl3], 'Color', [0.3 0.3 0.3], 'LineWidth', 3); 
    elseif summed(1,m) == 2
        line([m m+1], [linepl3 linepl3], 'Color', [.7 .7 .7], 'LineWidth', 3); 
    elseif summed(1,m) == 3
        line([m m+1], [linepl3 linepl3], 'Color', [0 0 0], 'LineWidth', 3);
    else 
        continue
    end
end

ylabel('dSPM value')
xticks([0 115 615 ]);
xticklabels([-115 0  500]);
yticks([-0.09 -0.07 -0.05 0 0.1]);
yticklabels({'post2 vs post6', 'pre vs post6', 'pre vs post2', '0', '0.1'});
title('Cont TP')

legend({'pre', 'post 2 mos', 'post 6+ mos', '1 significant', '2 significant', '3 significant'}, 'Location', [0,0.9,0.1,0.1]);
savefig(figure(1),'compare_allSub_alltimes_target_a2009sROIs.fig');