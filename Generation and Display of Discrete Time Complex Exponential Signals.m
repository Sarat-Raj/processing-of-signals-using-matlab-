

%%% %  Program V1_8 

%%% Generation and Display of Discrete Time Complex Exponential Signals
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com

clear all; close all; clc;

n = [-10:1:10]; 
alpha = -0.1+0.3j;
x = exp(alpha*n) ;
% x = exp(alpha*n).*sin(2*pi*0.12*n) ;

subplot(2,2,1); stem(n,real(x),'r','fill', 'LineWidth', 1.5);
xlabel('Time index n---->');ylabel('Amplitude');
title('real part'); grid on;

subplot(2,2,2); stem(n,imag(x),'b','fill', 'LineWidth', 1.5);
xlabel('Time index n---->');ylabel('Amplitude');
title('imaginary part'); grid on;

subplot(2,2,3); stem(n,abs(x),'m','fill', 'LineWidth', 1.5);
xlabel('Time index n---->');ylabel('Amplitude');
title('magnitude part'); grid on;

subplot(2,2,4); stem(n,(180/pi)*angle(x),'k','fill', 'LineWidth', 1.5);
xlabel('Time index n---->');ylabel('Degrees');
title('phase part'); grid on;