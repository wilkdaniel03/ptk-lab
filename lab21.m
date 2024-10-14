clear;
close all;
%N = 32;
%n = 0:N-1;
%k = 3.5;
%x1 = sin(2*pi*k/N*n);
%x2 = cos(2*pi*k*31/N*n);
%y1 = fft(x1);
%subplot(211), stem(n,x1+x2);
%subplot(212), stem(n,x2);

dt = 0;
N = 128;
fp = 8000;
t = dt:1/fp:dt+(N-1)*1/fp;
f = 0:fp/N:(N-1)*fp/N;
fs1 = 4;
fs2 = 48;
x1 = 4*cos(2*pi*fs1*t);
x2 = 2*cos(2*pi*fs2*t);
x = 1*x1+1*x2;
y1 = fft(x);
y1_mod = abs(y1);
y1_phase = angle(y1);
subplot(211),plot(x);
subplot(212),stem(y1_mod);
% (k/N) = fs => k/128 = 4 => k = 512
%plot([x x])

%M = 9*N;
%x_ext = [x,zeros(1,M)];
%f_ext = 0:fp/(N+M):(N+M-1)*fp/(N+M);
%X_ext = fft(x_ext);
%Xa_ext = abs(X_ext);
%close all;
%stem(f_ext,(Xa_ext),'b');
%hold on;
%stem(f,(y1_mod));
%hold off;