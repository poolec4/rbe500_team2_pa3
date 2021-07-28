close all
clear all
clc

file_path = 'catkin_ws/velocity_control_plot.txt';
data = readmatrix(file_path);

t = linspace(0,data(1,7)*length(data),length(data));
x_dot_des = data(:,1);
y_dot_des = data(:,2);
z_dot_des = data(:,3);
vx = data(:,4);
vy = data(:,5);
vz = data(:,6);

t_end = 140;

figure
hold on
grid on
title('Velocity Controller, x')
xlabel('$t (sec)$','Interpreter','LaTex')
ylabel('$v_x$','Interpreter','LaTex')
plot(t(1:t_end),x_dot_des(1:t_end), 'r')
plot(t(1:t_end),vx(1:t_end), 'b')
legend('Reference Velocity', 'Current Velocity', 'Location', 'northeast')
axis([0 0.6 -5 10])

figure
hold on
grid on
title('Velocity Controller, y')
xlabel('$t (sec)$','Interpreter','LaTex')
ylabel('$v_y$','Interpreter','LaTex')
plot(t(1:t_end),y_dot_des(1:t_end), 'r')
plot(t(1:t_end),vy(1:t_end), 'b')
legend('Reference Velocity', 'Current Velocity', 'Location', 'northeast')
axis([0 0.6 -5 10])

figure
hold on
grid on
title('Velocity Controller, z')
xlabel('$t (sec)$','Interpreter','LaTex')
ylabel('$v_z$','Interpreter','LaTex')
plot(t(1:t_end),z_dot_des(1:t_end), 'r')
plot(t(1:t_end),vz(1:t_end), 'b')
legend('Reference Velocity', 'Current Velocity', 'Location', 'northeast')
axis([0 0.6 -5 10])