clc
clear all;
%  [1; 2; 3; 4];[2 4 6 8]
xz = input("Enter X:");
hz = input("Enter H:");
hz=hz'
N=length(xz);
A=[xz zeros(N,N-1)];
A

a=length(hz)
if (a>N)
    xz=[xz zeros(1,(N-a))]
else
    hz=[hz zeros(1,(a-N))]
end

for i = 1:N-1
    
    y=A(:,i);
    A(:,i+1)= circshift(y,1);
    
end
A
A*hz
figure

subplot(2,1,1)

stem(A*hz)
xlim([0 5])
title('Adamay 102115046')
subplot(2,1,2)
stem(cconv(xz,hz,4))
xlim([0 5])
