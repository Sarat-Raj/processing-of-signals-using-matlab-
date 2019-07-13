
% 
% V9_2.m Analog Butterworth LPF

% Low-pass Filter
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all;close all;clc;

format long

% rp = input('enter the passband ripple');
% rs = input('enter the stopband ripple');
% fpass = input('enter the passband freq');
% fstop = input('enter the stopband freq');
% fs = input('enter the sampling freq');

rp = 0.15;
rs = 60;
fpass = 1500;  %  Hz
fstop = 3000;  %  Hz
fs = 7000;     %  Hz


w1 = 2*fpass/fs;w2=2*fstop/fs;
[n,wn] = buttord(w1,w2,rp,rs,'s');
[b,a] = butter(n,wn,'s');

w = 0:.01:pi;
% w = logspace(-1,1);
[h,om] = freqs(b,a,w);

m = 20*log10(abs(h));
an = angle(h);

% ----------------------------------------------------------------
figure();
subplot(2,1,1);plot(om/pi,m,'b','LineWidth',1.5 );
ylabel('Gain in dB --->.');xlabel('Normalised frequency --->');
title('Magnitude Response'); grid on;
axis([0 1 -450 30]);

subplot(2,1,2);plot(om/pi,an,'r','LineWidth',1.5 );
xlabel('Normalised frequency -->');
ylabel('Phase in radians -->'); 
title('Phase response'); grid on;

%------------Log scale -------------------------------------------
mag = abs(h);
phase = angle(h);

figure();
subplot(2,1,1);loglog(w,mag,'b','LineWidth',1.5);
% ylabel('Gain in dB --->.');xlabel('Normalised frequency --->');
title('Magnitude Response'); grid on;
axis([0 1 -450 30]);

subplot(2,1,2);semilogx(w,phase,'m','LineWidth',1.5);
% xlabel('Normalised frequency -->');
% ylabel('Phase in radians -->'); 
title('Phase response'); grid on;

% ----------------------------------------------------------------
