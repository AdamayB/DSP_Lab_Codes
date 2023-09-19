clc
clear all;
t=-2:0.0001:2;
unitstep(t>0)=1;

subplot(3,1,1)

plot(t,unitstep)
grid on
ylim([-1 2]);
xlim([-2,2])
title("Adamay 102115046")

impulse=t==0;
subplot(3,1,2);
stem(t,impulse);
grid on;
ylim([-1 1.5]);
xlim([-0.2,0.2]);

y=sign(t);
subplot(3,1,3);
plot(t,y);
ylim([-2 2]);
grid on


