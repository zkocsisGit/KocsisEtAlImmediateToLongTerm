%% this is to plot the behavioral figures
% first we load the control subject data, N = 20
load('controldata.mat');

% then load patient data
load('./P1_avg_sem_data.mat');
figure(1)
% plot patient data
errorbar(P1_preB, P1_preB_sem, 'LineWidth', 5, 'Color', 'b');
hold on
errorbar(P1_post2B, P1_post2B_sem, 'LineWidth', 5, 'Color', 'r');
errorbar(P1_post6B, P1_post6B_sem, 'LineWidth', 5, 'Color', 'g');
% plot individual control data and average
plot(s3(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s4(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s5(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s6(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s8(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s9(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s10(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s11(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s12(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s15(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s17(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s19(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s20(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s21(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s24(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s26(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s27(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s29(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s34(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s35(:,1), 'LineWidth', 1, 'Color', 'k');
plot(avg(:,1), 'LineWidth', 5, 'Color', 'k');

title('B bias')
xticks(0:6);
yticks(0:0.1:1);
xlabel('Voice onset time (b -> p)');
ylabel('Percentage of P responses');

legend({'P1 Pre','P1 Post 2 mo', 'P1 Post 6mo'},  'Location', [0,0.9,0.1,0.1]);
savefig(figure(1),'control_vs_P1_Bbias.fig', 'compact');

figure(2)
errorbar(P1_preP, P1_preP_sem, 'LineWidth', 5, 'Color', 'b');
hold on
errorbar(P1_post2P, P1_post2P_sem, 'LineWidth', 5, 'Color', 'r');
errorbar(P1_post6P, P1_post6P_sem, 'LineWidth', 5, 'Color', 'g');
plot(s3(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s4(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s5(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s6(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s8(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s9(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s10(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s11(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s12(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s15(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s17(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s19(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s20(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s21(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s24(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s26(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s27(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s29(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s34(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s35(:,2), 'LineWidth', 1, 'Color', 'k');
plot(avg(:,2), 'LineWidth', 5, 'Color', 'k');

title('P bias')
xticks(0:6);
yticks(0:0.1:1);
xlabel('Voice onset time (b -> p)');
ylabel('Percentage of P responses');

legend({'P1 Pre','P1 Post 2 mo', 'P1 Post 6mo'},  'Location', [0,0.9,0.1,0.1]);
savefig(figure(2),'control_vs_P1_Pbias.fig', 'compact');

%% do P2
load('./P2_avg_sem_data.mat');

figure(3)
% plot patient data
errorbar(P2_preB, P2_preB_sem, 'LineWidth', 5, 'Color', 'b');
hold on
errorbar(P2_post2B, P2_post2B_sem, 'LineWidth', 5, 'Color', 'r');
errorbar(P2_post6B, P2_post6B_sem, 'LineWidth', 5, 'Color', 'g');
% plot individual control data and average
plot(s3(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s4(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s5(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s6(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s8(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s9(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s10(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s11(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s12(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s15(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s17(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s19(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s20(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s21(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s24(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s26(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s27(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s29(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s34(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s35(:,1), 'LineWidth', 1, 'Color', 'k');
plot(avg(:,1), 'LineWidth', 5, 'Color', 'k');

title('B bias')
xticks(0:6);
yticks(0:0.1:1);
xlabel('Voice onset time (b -> p)');
ylabel('Percentage of P responses');

legend({'P2 Pre','P2 Post 2 mo', 'P2 Post 6mo'},  'Location', [0,0.9,0.1,0.1]);
savefig(figure(3),'control_vs_P2_Bbias.fig', 'compact');

figure(4)
errorbar(P2_preP, P2_preP_sem, 'LineWidth', 5, 'Color', 'b');
hold on
errorbar(P2_post2P, P2_post2P_sem, 'LineWidth', 5, 'Color', 'r');
errorbar(P2_post6P, P2_post6P_sem, 'LineWidth', 5, 'Color', 'g');
plot(s3(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s4(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s5(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s6(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s8(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s9(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s10(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s11(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s12(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s15(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s17(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s19(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s20(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s21(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s24(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s26(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s27(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s29(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s34(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s35(:,2), 'LineWidth', 1, 'Color', 'k');
plot(avg(:,2), 'LineWidth', 5, 'Color', 'k');

title('P bias')
xticks(0:6);
yticks(0:0.1:1);
xlabel('Voice onset time (b -> p)');
ylabel('Percentage of P responses');

legend({'P2 Pre','P2 Post 2 mo', 'P2 Post 6mo'},  'Location', [0,0.9,0.1,0.1]);
savefig(figure(4),'control_vs_P2_Pbias.fig', 'compact');

%% do P3
load('./P3_avg_sem_data.mat');

figure(5)
% plot patient data
errorbar(P3_preB, P3_preB_sem, 'LineWidth', 5, 'Color', 'b');
hold on
errorbar(P3_post2B, P3_post2B_sem, 'LineWidth', 5, 'Color', 'r');
errorbar(P3_post6B, P3_post6B_sem, 'LineWidth', 5, 'Color', 'g');
% plot individual control data and average
plot(s3(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s4(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s5(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s6(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s8(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s9(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s10(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s11(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s12(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s15(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s17(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s19(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s20(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s21(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s24(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s26(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s27(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s29(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s34(:,1), 'LineWidth', 1, 'Color', 'k');
plot(s35(:,1), 'LineWidth', 1, 'Color', 'k');
plot(avg(:,1), 'LineWidth', 5, 'Color', 'k');

title('B bias')
xticks(0:6);
yticks(0:0.1:1);
xlabel('Voice onset time (b -> p)');
ylabel('Percentage of P responses');

legend({'P3 Pre','P3 Post 2 mo', 'P3 Post 6mo'},  'Location', [0,0.9,0.1,0.1]);
savefig(figure(5),'control_vs_P3_Bbias.fig', 'compact');

figure(6)
errorbar(P3_preP, P3_preP_sem, 'LineWidth', 5, 'Color', 'b');
hold on
errorbar(P3_post2P, P3_post2P_sem, 'LineWidth', 5, 'Color', 'r');
errorbar(P3_post6P, P3_post6P_sem, 'LineWidth', 5, 'Color', 'g');
plot(s3(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s4(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s5(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s6(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s8(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s9(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s10(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s11(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s12(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s15(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s17(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s19(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s20(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s21(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s24(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s26(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s27(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s29(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s34(:,2), 'LineWidth', 1, 'Color', 'k');
plot(s35(:,2), 'LineWidth', 1, 'Color', 'k');
plot(avg(:,2), 'LineWidth', 5, 'Color', 'k');

title('P bias')
xticks(0:6);
yticks(0:0.1:1);
xlabel('Voice onset time (b -> p)');
ylabel('Percentage of P responses');

legend({'P3 Pre','P3 Post 2 mo', 'P3 Post 6mo'},  'Location', [0,0.9,0.1,0.1]);
savefig(figure(6),'control_vs_P3_Pbias.fig', 'compact');