clc
clear all
N = 64; 
n = 0:N-1; 
w = 2*pi/N; 

rectwin = ones(1,N); 
hammwin = 0.54 - 0.46*cos(w*n); 
hannwin = 0.5 - 0.5*cos(w*n); 
blackmauwin = 0.42 - 0.5*cos(w*n) + 0.08*cos(2*w*n);

figure(1)
subplot(2,2,1)
stem(n,rectwin)
title('Rectangular Window')
xlabel('n')
ylabel('w(n)')
subplot(2,2,2)
stem(n,hammwin)
title('Hamming Window')
xlabel('n')
ylabel('w(n)')
subplot(2,2,3)
stem(n,hannwin)
title('Hann Window')
xlabel('n')
ylabel('w(n)')
subplot(2,2,4)
stem(n,blackmauwin)
title('Blackmau Window')
xlabel('n')
ylabel('w(n)')

[H_rectwin, f_rectwin] = freqz(rectwin, 1, 1024);
[H_hammwin, f_hammwin] = freqz(hammwin, 1, 1024);
[H_hannwin, f_hannwin] = freqz(hannwin, 1, 1024);
[H_blackmauwin, f_blackmauwin] = freqz(blackmauwin, 1, 1024);


figure(2)
subplot(2,2,1)
plot(f_rectwin,log(abs(H_rectwin)))
title('Rectangular Window')
xlabel('n')
ylabel('w(n)')
subplot(2,2,2)
plot(f_hammwin,log(abs(H_hammwin)))
title('Hamming Window')
xlabel('n')
ylabel('w(n)')
subplot(2,2,3)
plot(f_hannwin,log(abs(H_hammwin)))
title('Hann Window')
xlabel('n')
ylabel('w(n)')
subplot(2,2,4)
plot(f_blackmauwin,log(abs(H_blackmauwin)))
title('Blackmau Window')
xlabel('n')
ylabel('w(n)')