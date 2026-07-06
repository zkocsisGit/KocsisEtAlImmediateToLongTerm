% this is to plot figure 2D AUC bar graphs
%plotting parameters
time = 1:951;
timeframe = 850:1800;

auc1 = 275:325; % 125 to 175 ms is our time of interest
lims = [-1 1];

pre1 = load('./data/P1_pre_target_3-30Hz_a2009s.mat');
pre2 = load('./data/P2_pre_target_3-30Hz_a2009s.mat');
pre3 = load('./data/P3_pre_target_3-30Hz_a2009s.mat');

pre_cont_hg = [pre1.label_ts(:,66,timeframe); pre2.label_ts(:,66,timeframe); pre3.label_ts(:,65,timeframe)];
pre_ipsi_hg = [pre1.label_ts(:,65,timeframe); pre2.label_ts(:,65,timeframe); pre3.label_ts(:,66,timeframe)];

pre_cont_stg = [pre1.label_ts(:,68,timeframe); pre2.label_ts(:,68,timeframe); pre3.label_ts(:,67,timeframe)];
pre_ipsi_stg = [pre1.label_ts(:,67,timeframe); pre2.label_ts(:,67,timeframe); pre3.label_ts(:,68,timeframe)];

pre_cont_ifgop = [pre1.label_ts(:,26,timeframe); pre2.label_ts(:,26,timeframe); pre3.label_ts(:,25,timeframe)];
pre_ipsi_ifgop = [pre1.label_ts(:,25,timeframe); pre2.label_ts(:,25,timeframe); pre3.label_ts(:,26,timeframe)];

pre_cont_ifgor = [pre1.label_ts(:,28,timeframe); pre2.label_ts(:,28,timeframe); pre3.label_ts(:,27,timeframe)];
pre_ipsi_ifgor = [pre1.label_ts(:,27,timeframe); pre2.label_ts(:,27,timeframe); pre3.label_ts(:,28,timeframe)];

pre_cont_ifgtri = [pre1.label_ts(:,30,timeframe); pre2.label_ts(:,30,timeframe); pre3.label_ts(:,29,timeframe)];
pre_ipsi_ifgtri = [pre1.label_ts(:,29,timeframe); pre2.label_ts(:,29,timeframe); pre3.label_ts(:,30,timeframe)];

pre_cont_sts = [pre1.label_ts(:,146,timeframe); pre2.label_ts(:,146,timeframe); pre3.label_ts(:,145,timeframe)];
pre_ipsi_sts = [pre1.label_ts(:,145,timeframe); pre2.label_ts(:,145,timeframe); pre3.label_ts(:,146,timeframe)];

pre_cont_tp = [pre1.label_ts(:,86,timeframe); pre2.label_ts(:,86,timeframe); pre3.label_ts(:,85,timeframe)];

pre_cont_hg_avg = abs(squeeze(mean(pre_cont_hg,1)));
pre_cont_hg_sem = squeeze(std(pre_cont_hg,[],1)/sqrt(size(pre_cont_hg,1)));

pre_ipsi_hg_avg = abs(squeeze(mean(pre_ipsi_hg,1)));
pre_ipsi_hg_sem = squeeze(std(pre_ipsi_hg,[],1)/sqrt(size(pre_ipsi_hg,1)));

pre_cont_stg_avg = abs(squeeze(mean(pre_cont_stg,1)));
pre_cont_stg_sem = squeeze(std(pre_cont_stg,[],1)/sqrt(size(pre_cont_stg,1)));

pre_ipsi_stg_avg = abs(squeeze(mean(pre_ipsi_stg,1)));
pre_ipsi_stg_sem = squeeze(std(pre_ipsi_stg,[],1)/sqrt(size(pre_ipsi_stg,1)));

pre_cont_sts_avg = abs(squeeze(mean(pre_cont_sts,1)));
pre_cont_sts_sem = squeeze(std(pre_cont_sts,[],1)/sqrt(size(pre_cont_sts,1)));

pre_ipsi_sts_avg = abs(squeeze(mean(pre_ipsi_sts,1)));
pre_ipsi_sts_sem = squeeze(std(pre_ipsi_sts,[],1)/sqrt(size(pre_ipsi_sts,1)));

pre_cont_ifgop_avg = abs(squeeze(mean(pre_cont_ifgop,1)));
pre_cont_ifgop_sem = squeeze(std(pre_cont_ifgop,[],1)/sqrt(size(pre_cont_ifgop,1)));

pre_ipsi_ifgop_avg = abs(squeeze(mean(pre_ipsi_ifgop,1)));
pre_ipsi_ifgop_sem = squeeze(std(pre_ipsi_ifgop,[],1)/sqrt(size(pre_ipsi_ifgop,1)));

pre_cont_ifgor_avg = abs(squeeze(mean(pre_cont_ifgor,1)));
pre_cont_ifgor_sem = squeeze(std(pre_cont_ifgor,[],1)/sqrt(size(pre_cont_ifgor,1)));

pre_ipsi_ifgor_avg = abs(squeeze(mean(pre_ipsi_ifgor,1)));
pre_ipsi_ifgor_sem = squeeze(std(pre_ipsi_ifgor,[],1)/sqrt(size(pre_ipsi_ifgor,1)));

pre_cont_ifgtri_avg = abs(squeeze(mean(pre_cont_ifgtri,1)));
pre_cont_ifgtri_sem = squeeze(std(pre_cont_ifgtri,[],1)/sqrt(size(pre_cont_ifgtri,1)));

pre_ipsi_ifgtri_avg = abs(squeeze(mean(pre_ipsi_ifgtri,1)));
pre_ipsi_ifgtri_sem = squeeze(std(pre_ipsi_ifgtri,[],1)/sqrt(size(pre_ipsi_ifgtri,1)));

pre_cont_tp_avg = abs(squeeze(mean(pre_cont_tp,1)));
pre_cont_tp_sem = squeeze(std(pre_cont_tp,[],1)/sqrt(size(pre_cont_tp,1)));

%%

post1 = load('./data/P1_post2_target_3-30Hz_a2009s.mat');
post2 = load('./data/P2_post2_target_3-30Hz_a2009s.mat');
post3 = load('./data/P3_post2_target_3-30Hz_a2009s.mat');

post_cont_hg = [post1.label_ts(:,66,timeframe); post2.label_ts(:,66,timeframe); post3.label_ts(:,65,timeframe)];
post_ipsi_hg = [post1.label_ts(:,65,timeframe); post2.label_ts(:,65,timeframe); post3.label_ts(:,66,timeframe)];

post_cont_stg = [post1.label_ts(:,68,timeframe); post2.label_ts(:,68,timeframe); post3.label_ts(:,67,timeframe)];
post_ipsi_stg = [post1.label_ts(:,67,timeframe); post2.label_ts(:,67,timeframe); post3.label_ts(:,68,timeframe)];

post_cont_ifgop = [post1.label_ts(:,26,timeframe); post2.label_ts(:,26,timeframe); post3.label_ts(:,25,timeframe)];
post_ipsi_ifgop = [post1.label_ts(:,25,timeframe); post2.label_ts(:,25,timeframe); post3.label_ts(:,26,timeframe)];

post_cont_ifgor = [post1.label_ts(:,28,timeframe); post2.label_ts(:,28,timeframe); post3.label_ts(:,27,timeframe)];
post_ipsi_ifgor = [post1.label_ts(:,27,timeframe); post2.label_ts(:,27,timeframe); post3.label_ts(:,28,timeframe)];

post_cont_ifgtri = [post1.label_ts(:,30,timeframe); post2.label_ts(:,30,timeframe); post3.label_ts(:,29,timeframe)];
post_ipsi_ifgtri = [post1.label_ts(:,29,timeframe); post2.label_ts(:,29,timeframe); post3.label_ts(:,30,timeframe)];

post_cont_sts = [post1.label_ts(:,146,timeframe); post2.label_ts(:,146,timeframe); post3.label_ts(:,145,timeframe)];
post_ipsi_sts = [post1.label_ts(:,145,timeframe); post2.label_ts(:,145,timeframe); post3.label_ts(:,146,timeframe)];

post_cont_tp = [post1.label_ts(:,86,timeframe); post2.label_ts(:,86,timeframe); post3.label_ts(:,85,timeframe)];

post_cont_hg_avg = abs(squeeze(mean(post_cont_hg,1)));
post_cont_hg_sem = squeeze(std(post_cont_hg,[],1)/sqrt(size(post_cont_hg,1)));

post_ipsi_hg_avg = abs(squeeze(mean(post_ipsi_hg,1)));
post_ipsi_hg_sem = squeeze(std(post_ipsi_hg,[],1)/sqrt(size(post_ipsi_hg,1)));

post_cont_stg_avg = abs(squeeze(mean(post_cont_stg,1)));
post_cont_stg_sem = squeeze(std(post_cont_stg,[],1)/sqrt(size(post_cont_stg,1)));

post_ipsi_stg_avg = abs(squeeze(mean(post_ipsi_stg,1)));
post_ipsi_stg_sem = squeeze(std(post_ipsi_stg,[],1)/sqrt(size(post_ipsi_stg,1)));

post_cont_ifgop_avg = abs(squeeze(mean(post_cont_ifgop,1)));
post_cont_ifgop_sem = squeeze(std(post_cont_ifgop,[],1)/sqrt(size(post_cont_ifgop,1)));

post_ipsi_ifgop_avg = abs(squeeze(mean(post_ipsi_ifgop,1)));
post_ipsi_ifgop_sem = squeeze(std(post_ipsi_ifgop,[],1)/sqrt(size(post_ipsi_ifgop,1)));

post_cont_ifgor_avg = abs(squeeze(mean(post_cont_ifgor,1)));
post_cont_ifgor_sem = squeeze(std(post_cont_ifgor,[],1)/sqrt(size(post_cont_ifgor,1)));

post_ipsi_ifgor_avg = abs(squeeze(mean(post_ipsi_ifgor,1)));
post_ipsi_ifgor_sem = squeeze(std(post_ipsi_ifgor,[],1)/sqrt(size(post_ipsi_ifgor,1)));

post_cont_ifgtri_avg = abs(squeeze(mean(post_cont_ifgtri,1)));
post_cont_ifgtri_sem = squeeze(std(post_cont_ifgtri,[],1)/sqrt(size(post_cont_ifgtri,1)));

post_ipsi_ifgtri_avg = abs(squeeze(mean(post_ipsi_ifgtri,1)));
post_ipsi_ifgtri_sem = squeeze(std(post_ipsi_ifgtri,[],1)/sqrt(size(post_ipsi_ifgtri,1)));

post_cont_sts_avg = abs(squeeze(mean(post_cont_sts,1)));
post_cont_sts_sem = squeeze(std(post_cont_sts,[],1)/sqrt(size(post_cont_sts,1)));

post_ipsi_sts_avg = abs(squeeze(mean(post_ipsi_sts,1)));
post_ipsi_sts_sem = squeeze(std(post_ipsi_sts,[],1)/sqrt(size(post_ipsi_sts,1)));

post_cont_tp_avg = abs(squeeze(mean(post_cont_tp,1)));
post_cont_tp_sem = squeeze(std(post_cont_tp,[],1)/sqrt(size(post_cont_tp,1)));

%%
post2_1 = load('./data/P1_post6_target_3-30Hz_a2009s.mat');
post2_2 = load('./data/P2_post6_target_3-30Hz_a2009s.mat');
post2_3 = load('./data/P3_post6_target_3-30Hz_a2009s.mat');

post2_cont_hg = [post2_1.label_ts(:,66,timeframe); post2_2.label_ts(:,66,timeframe); post2_3.label_ts(:,65,timeframe)];
post2_ipsi_hg = [post2_1.label_ts(:,65,timeframe); post2_2.label_ts(:,65,timeframe); post2_3.label_ts(:,66,timeframe)];

post2_cont_stg = [post2_1.label_ts(:,68,timeframe); post2_2.label_ts(:,68,timeframe); post2_3.label_ts(:,67,timeframe)];
post2_ipsi_stg = [post2_1.label_ts(:,67,timeframe); post2_2.label_ts(:,67,timeframe); post2_3.label_ts(:,68,timeframe)];

post2_cont_ifgop = [post2_1.label_ts(:,26,timeframe); post2_2.label_ts(:,26,timeframe); post2_3.label_ts(:,25,timeframe)];
post2_ipsi_ifgop = [post2_1.label_ts(:,25,timeframe); post2_2.label_ts(:,25,timeframe); post2_3.label_ts(:,26,timeframe)];

post2_cont_ifgor = [post2_1.label_ts(:,28,timeframe); post2_2.label_ts(:,28,timeframe); post2_3.label_ts(:,27,timeframe)];
post2_ipsi_ifgor = [post2_1.label_ts(:,27,timeframe); post2_2.label_ts(:,27,timeframe); post2_3.label_ts(:,28,timeframe)];

post2_cont_ifgtri = [post2_1.label_ts(:,30,timeframe); post2_2.label_ts(:,30,timeframe); post2_3.label_ts(:,29,timeframe)];
post2_ipsi_ifgtri = [post2_1.label_ts(:,29,timeframe); post2_2.label_ts(:,29,timeframe); post2_3.label_ts(:,30,timeframe)];

post2_cont_sts = [post2_1.label_ts(:,146,timeframe); post2_2.label_ts(:,146,timeframe); post2_3.label_ts(:,145,timeframe)];
post2_ipsi_sts = [post2_1.label_ts(:,145,timeframe); post2_2.label_ts(:,145,timeframe); post2_3.label_ts(:,146,timeframe)];

post2_cont_tp = [post2_1.label_ts(:,86,timeframe); post2_2.label_ts(:,86,timeframe); post2_3.label_ts(:,85,timeframe)];

post2_cont_hg_avg = abs(squeeze(mean(post2_cont_hg,1)));
post2_cont_hg_sem = squeeze(std(post2_cont_hg,[],1)/sqrt(size(post2_cont_hg,1)));

post2_ipsi_hg_avg = abs(squeeze(mean(post2_ipsi_hg,1)));
post2_ipsi_hg_sem = squeeze(std(post2_ipsi_hg,[],1)/sqrt(size(post2_ipsi_hg,1)));

post2_cont_stg_avg = abs(squeeze(mean(post2_cont_stg,1)));
post2_cont_stg_sem = squeeze(std(post2_cont_stg,[],1)/sqrt(size(post2_cont_stg,1)));

post2_ipsi_stg_avg = abs(squeeze(mean(post2_ipsi_stg,1)));
post2_ipsi_stg_sem = squeeze(std(post2_ipsi_stg,[],1)/sqrt(size(post2_ipsi_stg,1)));

post2_cont_ifgop_avg = abs(squeeze(mean(post2_cont_ifgop,1)));
post2_cont_ifgop_sem = squeeze(std(post2_cont_ifgop,[],1)/sqrt(size(post2_cont_ifgop,1)));

post2_ipsi_ifgop_avg = abs(squeeze(mean(post2_ipsi_ifgop,1)));
post2_ipsi_ifgop_sem = squeeze(std(post2_ipsi_ifgop,[],1)/sqrt(size(post2_ipsi_ifgop,1)));

post2_cont_ifgor_avg = abs(squeeze(mean(post2_cont_ifgor,1)));
post2_cont_ifgor_sem = squeeze(std(post2_cont_ifgor,[],1)/sqrt(size(post2_cont_ifgor,1)));

post2_ipsi_ifgor_avg = abs(squeeze(mean(post2_ipsi_ifgor,1)));
post2_ipsi_ifgor_sem = squeeze(std(post2_ipsi_ifgor,[],1)/sqrt(size(post2_ipsi_ifgor,1)));

post2_cont_ifgtri_avg = abs(squeeze(mean(post2_cont_ifgtri,1)));
post2_cont_ifgtri_sem = squeeze(std(post2_cont_ifgtri,[],1)/sqrt(size(post2_cont_ifgtri,1)));

post2_ipsi_ifgtri_avg = abs(squeeze(mean(post2_ipsi_ifgtri,1)));
post2_ipsi_ifgtri_sem = squeeze(std(post2_ipsi_ifgtri,[],1)/sqrt(size(post2_ipsi_ifgtri,1)));

post2_cont_sts_avg = abs(squeeze(mean(post2_cont_sts,1)));
post2_cont_sts_sem = squeeze(std(post2_cont_sts,[],1)/sqrt(size(post2_cont_sts,1)));

post2_ipsi_sts_avg = abs(squeeze(mean(post2_ipsi_sts,1)));
post2_ipsi_sts_sem = squeeze(std(post2_ipsi_sts,[],1)/sqrt(size(post2_ipsi_sts,1)));

post2_cont_tp_avg = abs(squeeze(mean(post2_cont_tp,1)));
post2_cont_tp_sem = squeeze(std(post2_cont_tp,[],1)/sqrt(size(post2_cont_tp,1)));

%% calculate average area under the curve for ROIs
pre_cont_hg_auc1 = trapz(pre_cont_hg_avg(auc1));
post_cont_hg_auc1 = trapz(post_cont_hg_avg(auc1));
pre_ipsi_hg_auc1 = trapz(pre_ipsi_hg_avg(auc1));
post_ipsi_hg_auc1 = trapz(post_ipsi_hg_avg(auc1));
post2_cont_hg_auc1 = trapz(post2_cont_hg_avg(auc1));
post2_ipsi_hg_auc1 = trapz(post2_ipsi_hg_avg(auc1));

pre_cont_stg_auc1 = trapz(pre_cont_stg_avg(auc1));
post_cont_stg_auc1 = trapz(post_cont_stg_avg(auc1));
pre_ipsi_stg_auc1 = trapz(pre_ipsi_stg_avg(auc1));
post_ipsi_stg_auc1 = trapz(post_ipsi_stg_avg(auc1));
post2_cont_stg_auc1 = trapz(post2_cont_stg_avg(auc1));
post2_ipsi_stg_auc1 = trapz(post2_ipsi_stg_avg(auc1));

pre_cont_sts_auc1 = trapz(pre_cont_sts_avg(auc1));
post_cont_sts_auc1 = trapz(post_cont_sts_avg(auc1));
pre_ipsi_sts_auc1 = trapz(pre_ipsi_sts_avg(auc1));
post_ipsi_sts_auc1 = trapz(post_ipsi_sts_avg(auc1));
post2_cont_sts_auc1 = trapz(post2_cont_sts_avg(auc1));
post2_ipsi_sts_auc1 = trapz(post2_ipsi_sts_avg(auc1));

pre_cont_ifgtri_auc1 = trapz(pre_cont_ifgtri_avg(auc1));
post_cont_ifgtri_auc1 = trapz(post_cont_ifgtri_avg(auc1));
pre_ipsi_ifgtri_auc1 = trapz(pre_ipsi_ifgtri_avg(auc1));
post_ipsi_ifgtri_auc1 = trapz(post_ipsi_ifgtri_avg(auc1));
post2_cont_ifgtri_auc1 = trapz(post2_cont_ifgtri_avg(auc1));
post2_ipsi_ifgtri_auc1 = trapz(post2_ipsi_ifgtri_avg(auc1));

pre_cont_ifgop_auc1 = trapz(pre_cont_ifgop_avg(auc1));
post_cont_ifgop_auc1 = trapz(post_cont_ifgop_avg(auc1));
pre_ipsi_ifgop_auc1 = trapz(pre_ipsi_ifgop_avg(auc1));
post_ipsi_ifgop_auc1 = trapz(post_ipsi_ifgop_avg(auc1));
post2_cont_ifgop_auc1 = trapz(post2_cont_ifgop_avg(auc1));
post2_ipsi_ifgop_auc1 = trapz(post2_ipsi_ifgop_avg(auc1));

pre_cont_ifgor_auc1 = trapz(pre_cont_ifgor_avg(auc1));
post_cont_ifgor_auc1 = trapz(post_cont_ifgor_avg(auc1));
pre_ipsi_ifgor_auc1 = trapz(pre_ipsi_ifgor_avg(auc1));
post_ipsi_ifgor_auc1 = trapz(post_ipsi_ifgor_avg(auc1));
post2_cont_ifgor_auc1 = trapz(post2_cont_ifgor_avg(auc1));
post2_ipsi_ifgor_auc1 = trapz(post2_ipsi_ifgor_avg(auc1));

pre_cont_tp_auc1 = trapz(pre_cont_tp_avg(auc1));
post_cont_tp_auc1 = trapz(post_cont_tp_avg(auc1));
post2_cont_tp_auc1 = trapz(post2_cont_tp_avg(auc1));


%% plot difference relative to pre
%calculate relative to pre

prepost_cont_hg_auc1_diff = post_cont_hg_auc1 - pre_cont_hg_auc1;
prepost_ipsi_hg_auc1_diff = post_ipsi_hg_auc1 - pre_ipsi_hg_auc1;

prepost_cont_stg_auc1_diff = post_cont_stg_auc1 - pre_cont_stg_auc1;
prepost_ipsi_stg_auc1_diff = post_ipsi_stg_auc1 - pre_ipsi_stg_auc1;

prepost_cont_sts_auc1_diff = post_cont_sts_auc1 - pre_cont_sts_auc1;
prepost_ipsi_sts_auc1_diff = post_ipsi_sts_auc1 - pre_ipsi_sts_auc1;

prepost_cont_ifgor_auc1_diff = post_cont_ifgor_auc1 - pre_cont_ifgor_auc1;
prepost_ipsi_ifgor_auc1_diff = post_ipsi_ifgor_auc1 - pre_ipsi_ifgor_auc1;

prepost_cont_ifgop_auc1_diff = post_cont_ifgop_auc1 - pre_cont_ifgop_auc1;
prepost_ipsi_ifgop_auc1_diff = post_ipsi_ifgop_auc1 - pre_ipsi_ifgop_auc1;

prepost_cont_ifgtri_auc1_diff = post_cont_ifgtri_auc1 - pre_cont_ifgtri_auc1;
prepost_ipsi_ifgtri_auc1_diff = post_ipsi_ifgtri_auc1 - pre_ipsi_ifgtri_auc1;

prepost_cont_tp_auc1_diff = post_cont_tp_auc1 - pre_cont_tp_auc1;

%calculate relative to post2
prepost2_cont_hg_auc1_diff = post2_cont_hg_auc1 - pre_cont_hg_auc1;
prepost2_ipsi_hg_auc1_diff = post2_ipsi_hg_auc1 - pre_ipsi_hg_auc1;

prepost2_cont_stg_auc1_diff = post2_cont_stg_auc1 - pre_cont_stg_auc1;
prepost2_ipsi_stg_auc1_diff = post2_ipsi_stg_auc1 - pre_ipsi_stg_auc1;

prepost2_cont_sts_auc1_diff = post2_cont_sts_auc1 - pre_cont_sts_auc1;
prepost2_ipsi_sts_auc1_diff = post2_ipsi_sts_auc1 - pre_ipsi_sts_auc1;

prepost2_cont_ifgor_auc1_diff = post2_cont_ifgor_auc1 - pre_cont_ifgor_auc1;
prepost2_ipsi_ifgor_auc1_diff = post2_ipsi_ifgor_auc1 - pre_ipsi_ifgor_auc1;

prepost2_cont_ifgop_auc1_diff = post2_cont_ifgop_auc1 - pre_cont_ifgop_auc1;
prepost2_ipsi_ifgop_auc1_diff = post2_ipsi_ifgop_auc1 - pre_ipsi_ifgop_auc1;

prepost2_cont_ifgtri_auc1_diff = post2_cont_ifgtri_auc1 - pre_cont_ifgtri_auc1;
prepost2_ipsi_ifgtri_auc1_diff = post2_ipsi_ifgtri_auc1 - pre_ipsi_ifgtri_auc1;

prepost2_cont_tp_auc1_diff = post2_cont_tp_auc1 - pre_cont_tp_auc1;

%%
figure(1)
set(gcf, 'Position', get(0, 'Screensize')); % full screen figure

subplot(7,2,1)
bh = bar([prepost_ipsi_hg_auc1_diff, prepost2_ipsi_hg_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
ylim([-2 1]);
title('Ipsi HG');

subplot(7,2,2)
bh = bar([prepost_cont_hg_auc1_diff, prepost2_cont_hg_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
ylim([-1 6]);
title('Cont HG');

subplot(7,2,3)
bh = bar([prepost_ipsi_ifgtri_auc1_diff, prepost2_ipsi_ifgtri_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Ipsi IFG tri');
ylim(lims);

subplot(7,2,4)
bh = bar([prepost_cont_ifgtri_auc1_diff, prepost2_cont_ifgtri_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Cont IFG tri');
ylim(lims);

subplot(7,2,5)
bh = bar([prepost_ipsi_ifgop_auc1_diff, prepost2_ipsi_ifgop_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Ipsi IFG op');
ylim(lims);

subplot(7,2,6)
bh = bar([prepost_cont_ifgop_auc1_diff, prepost2_cont_ifgop_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Cont IFG op');
ylim(lims);

subplot(7,2,7)
bh = bar([prepost_ipsi_ifgor_auc1_diff, prepost2_ipsi_ifgor_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Ipsi IFG or');
ylim(lims);

subplot(7,2,8)
bh = bar([prepost_cont_ifgor_auc1_diff, prepost2_cont_ifgor_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Cont IFG or');
ylim(lims);

subplot(7,2,9)
bh = bar([prepost_ipsi_stg_auc1_diff, prepost2_ipsi_stg_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Ipsi STG');
ylim(lims);

subplot(7,2,10)
bh = bar([prepost_cont_stg_auc1_diff, prepost2_cont_stg_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Cont STG');
ylim(lims);

subplot(7,2,12)
bh = bar([prepost_cont_tp_auc1_diff, prepost2_cont_tp_auc1_diff]);
bh.FaceColor = 'flat';
bh.CData(1,:) = [1 0 0]; 
bh.CData(2,:) = [0 1 0];
xticklabels({'post 2mo - pre'; 'post 6+mo - pre'});
title('Cont TP');
ylim([-1 3]);

% legend({'Pre vs Post 2mo'; ' Pre vs Post 6+mo'}, 'Location', [0,0.9,0.1,0.1]);

savefig(figure(1),'.\compare_allSub_125to175ms_bargraphrelative_a2009s_3-30Hz_ABS.fig');
