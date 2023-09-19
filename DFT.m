clc
clear all
xz=input('enter sequence:')
N=length(xz)
XF=zeros(1,N);
for k=0:N-1
     for n=0:N-1
         
          XF(k+1) = XF(k+1) + xz(n+1)*exp((-1*1i*2*pi*k*n)/N);
     end
end
 XF
% subplot(2,1,1)
figure
subplot(2,1,1)

stem(abs(XF))
xlim([0 5])
title('Adamay 102115046 DFT');

subplot(2,1,2)
stem(angle(XF))
xlim([0 5])