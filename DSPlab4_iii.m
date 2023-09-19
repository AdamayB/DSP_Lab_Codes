clc
clear all;

x1=input('Enter Input Signal:');
x2=input('Enter Impulse Response:');

n=length(x1);
m=length(x2);
N=m+n-1;

X=[x1, zeros(1,n)];
Y=[x2, zeros(1,m)];
y=zeros(1,N);


y;
ans=conv(x1,x2);
Y=length(ans);
d=max(m,n);
final=[zeros(1,Y)];
for i=1:d
    final(i)=ans(i);
end
for j=d+1:Y
    final(j-d)=final(j-d)+ans(j);
end


final(1:d)
cconv(x1,x2,n)
subplot(2,1,1);

stem(final(1:d))
l1=x1(1)-1
l2=x1(n)+1
xlim([l1 l2])
title("Adamay_102115046")
subplot(2,1,2);
stem(cconv(x1,x2,n))
xlim([l1 l2])
