clc
clear all;
close all;

x = [1,2];
h=[1,2,4];
c=length(x);
d=length(h);
k=c+d-1;
X=[x,zeros(1,d)]
H=[h,zeros(1,c)]
for(i=1:k)
    sum(i)=0;
    for(j=1:c)
        if(i-j+1>0)
            sum(i)=sum(i)+(X(j).*H(abs(i+1-j)));
        end
    end
end
sum
u=conv(x,h)