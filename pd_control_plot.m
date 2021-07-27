close all
clear all
clc

file_path = 'catkin_ws/pd_control_plot.txt';
data_table = readtable(file_path);

data = table2array(data_table(:,2:5));


th1_des = data(ismember(data_table.Var1, 'joint1'),2);
th1_cur = data(ismember(data_table.Var1, 'joint1'),1);
th1_f = data(ismember(data_table.Var1, 'joint1'),3);
th1_len = length(data(ismember(data_table.Var1, 'joint1'),1));
th1_t = linspace(0,data(1,4)*th1_len,th1_len);

th2_des = data(ismember(data_table.Var1, 'joint3'),2);
th2_cur = data(ismember(data_table.Var1, 'joint3'),1);
th2_f = data(ismember(data_table.Var1, 'joint3'),3);
th2_len = length(data(ismember(data_table.Var1, 'joint3'),1));
th2_t = linspace(0,data(1,4)*th2_len,th2_len);

d3_des = data(ismember(data_table.Var1, 'joint5'),2);
d3_cur = data(ismember(data_table.Var1, 'joint5'),1);
d3_f = data(ismember(data_table.Var1, 'joint5'),3);
d3_len = length(data(ismember(data_table.Var1, 'joint5'),1));
d3_t = linspace(0,data(1,4)*d3_len,d3_len);

figure
hold on
grid on
title('Link 1 PD Controller')
xlabel('$t (sec)$','Interpreter','LaTex')
ylabel('$\theta_1$','Interpreter','LaTex')
plot(th1_t,th1_des, 'r')
plot(th1_t,th1_cur, 'b')
legend('Reference Position', 'Current Position', 'Location', 'northeast')

figure
hold on
grid on
title('Link 2 PD Controller')
xlabel('$t (sec)$','Interpreter','LaTex')
ylabel('$\theta_2$','Interpreter','LaTex')
plot(th2_t,th2_des, 'r')
plot(th2_t,th2_cur, 'b')
legend('Reference Position', 'Current Position', 'Location', 'northeast')

figure
hold on
grid on
title('Link 3 PD Controller')
xlabel('$t (sec)$','Interpreter','LaTex')
ylabel('$d_3$','Interpreter','LaTex')
plot(d3_t,d3_des, 'r')
plot(d3_t,d3_cur, 'b')
legend('Reference Position', 'Current Position', 'Location', 'northeast')