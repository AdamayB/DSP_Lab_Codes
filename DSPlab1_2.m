clc; 
clear all;
t=-10:0.01:10;
duty = input("Enter Duty Cycle:")
freq = input("Enter Frequency:")
pulse = square(2*3.14*freq*t,duty);
plot(t,pulse);
grid on;
ylim([-2, 2]);
title("Adamay 102115046")
