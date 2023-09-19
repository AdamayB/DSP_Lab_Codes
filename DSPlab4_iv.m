clc
clear all;

x1=[1 2 3 4];
x2=[5 4 3];

n=length(x1);
m=length(x2);
N=max(n,m);
Y=cconv(x1,x2,N)
x1=[x1, zeros(1,N-n)];
x2=[x2, zeros(1,N-m)];

XF=fft(x1,N);
HF=fft(x2,N);
ansd=XF.*HF;
ifft(ansd)
stem(ifft(ansd))
title("Adamay 102115046")
