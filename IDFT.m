clc
clear all;
xz=input('enter sequence:')
N=length(xz)
XF=zeros(1,N);
for k=0:N-1
     for n=0:N-1
         
          XF(k+1) = XF(k+1) + xz(n+1)*exp((1*1i*2*pi*k*n)/N);
     end
end
 X=XF/N
 figure
 subplot(2,1,1)
 stem(abs(X))
 xlim([0 5])
 title('Adamay 102115046 IDFT')
 subplot(2,1,2)
 stem(angle(X))

 xlim([0 5])
 %ifft(xz)
 %[2.5000 + 0.0000i,  -0.5000 - 0.5000i,  -0.5000 + 0.0000i,  -0.5000 + 0.5000i]