clc
clear all
t=(-10:0.01:10);
f=input('Enter frequency');
a=input('Enter Amplitude');
p=input('Enter Phase');
x=a*sin(2*pi*f*t+p);
plot(t,x);

title('Adamay Bhardwaj 102115046')
