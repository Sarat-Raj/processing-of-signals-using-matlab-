
%  Program V1_6 

%%% Generation and Display of Generation of Discrete Time Real Exponential
%%% Sequences 
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com

clear all; close all; clc;

N = 36; 
n = 0:N;

x1 = (0.9).^n;
subplot(2,2,1); stem(n,real(x1),'r','fill', 'LineWidth', 1.5);
title('0<a<1');axis([-2 40 -0.2 1.2]);
xlabel('Time index n---->');ylabel('Amplitude');

x2 = (1.1).^n;
subplot(2,2,2); stem(n,x2,'b','fill', 'LineWidth', 1.5);
title('a>1'); axis([-2 40 -0.5 35]);
xlabel('Time index n---->');ylabel('Amplitude');

x3 = (-0.9).^n;
subplot(2,2,3); stem(n,x3,'m','fill', 'LineWidth', 1.5);
title('-1<a<0');axis([-2 40 -1.2 1.2]);
xlabel('Time index n---->');ylabel('Amplitude');

x4 = (-1.1).^n;
subplot(2,2,4); stem(n,x4,'k','fill', 'LineWidth', 1.5);
title('a<-1');axis([-2 40 -32 36]);
xlabel('Time index n---->');ylabel('Amplitude');



