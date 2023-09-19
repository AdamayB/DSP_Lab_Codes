clc
clear all;
xz = [1 2 3 4];
hz = [1 2 3];
xz1 = [1 2 3 4];
hz1 = [1 2 3];


N=length(xz);
M=length(hz);
k=N+M-1;

xz=[xz zeros(1,(k-N))];
hz=[hz zeros(1,(k-M))];

hz=hz';
xz=xz';
A=[xz zeros(k,k-1)];

for i = 1:N+M-2
    
    y=A(:,i);
    A(:,i+1)= circshift(y,1);
    
end
A;
hz;
ans=(A*hz)'

figure
subplot(2,1,1)
stem(A*hz)
xlim([0 11])
title('Adamay 102115046')
subplot(2,1,2)
stem(conv(xz,hz))
xlim([0 11])