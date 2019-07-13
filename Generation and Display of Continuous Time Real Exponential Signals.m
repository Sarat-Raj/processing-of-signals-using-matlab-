
%  Program V1_5 

%%% Generation and Display of Generation of Continuous Time Real Exponential
%%% Signals 
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;
%%% =========================================================
%%%  Generation of Continuous TimeExponential Signal x(t) = k e^(-at)u(t);

N = 15;
t = 0:1:N;
% a1 = input('enter the value of a1  =  ');
%%% If 'a' is positive decaying function and 
%%% If 'a' is negative growing function
a1 = 0.35;  K = 1;
x1 = K*exp(-a1*t);
figure(); subplot(2,1,1);plot(t,x1,'black','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
legend('a1 = -0.35'); grid on;
title('C.T. Exponential Function (Decaying)');

% a2 = input('enter the value of a2  =  ');
a2 = -0.45; K = 1.2;  x2 = K*exp(-a2*t);
subplot(2,1,2);plot(t,x2,'m','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
legend('a2 = 0.45'); grid on;
title('C.T. Exponential Function (Growing)');
% axis([-0.05, 12,-0.05 1.2]);