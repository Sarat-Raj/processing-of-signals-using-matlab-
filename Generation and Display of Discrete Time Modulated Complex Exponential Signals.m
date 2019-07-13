

%%% %  Program V1_9

%%% Generation and Display of Discrete Time Modulated Complex Exponential Signals
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com

clear all; close all; clc;

n = [0:1:60]; 
alpha = -0.03+0.02j;
x = exp(alpha*n).*cos(2*pi*0.12*n) ;

subplot(2,2,1); stem(n,real(x),'r','fill', 'LineWidth', 0.8);
% hold on; plot(n, real(x),'--b');
xlabel('Time index n---->');ylabel('Amplitude');
title('real part'); axis off; %grid on;

subplot(2,2,2); stem(n,imag(x),'b','fill', 'LineWidth', 0.8);
xlabel('Time index n---->');ylabel('Amplitude');
title('imaginary part'); axis off; %grid on;

subplot(2,2,3); stem(n,abs(x),'m','fill', 'LineWidth', 0.8);
xlabel('Time index n---->');ylabel('Amplitude');
title('magnitude part'); axis off; %grid on;

subplot(2,2,4); stem(n,(180/pi)*angle(x),'k','fill', 'LineWidth', 0.8);
xlabel('Time index n---->');ylabel('Degrees');
title('phase part'); axis off; %grid on;