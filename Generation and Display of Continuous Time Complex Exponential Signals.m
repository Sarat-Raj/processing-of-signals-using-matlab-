
%  Program V1_7 

%%% Generation and Display of Continuous Time Complex Exponential Signals
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com

clear all; close all; clc;

t = [-10:0.01:10]; 
alpha = -0.1+0.3j;
x = exp(alpha*t);

subplot(2,2,1); plot(t,real(x),'r', 'LineWidth', 1.5);
xlabel('Time index n---->');ylabel('Amplitude');
title('real part'); grid on;

subplot(2,2,2); plot(t,imag(x),'b', 'LineWidth', 1.5);
xlabel('Time index t---->');ylabel('Amplitude');
title('imaginary part');grid on;

subplot(2,2,3); plot(t,abs(x),'m', 'LineWidth', 1.5);
xlabel('Time index t---->');ylabel('Amplitude');
title('magnitude part');grid on;

subplot(2,2,4); plot(t,(180/pi)*angle(x),'k', 'LineWidth', 1.5);
xlabel('Time index t---->');ylabel('Degrees');
title('phase part');grid on;
