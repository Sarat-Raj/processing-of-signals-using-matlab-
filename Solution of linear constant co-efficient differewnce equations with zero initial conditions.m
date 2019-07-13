
%%% Program V5_3.m Solution of linear constant co-efficient differewnce equations
%%% with zero initial conditions

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
%-------------------------------------------------------------------------

% Solve  y[n] - (3/2)y[n-1]+(1/2)y[n-2] = x[n],  n >= 0
% where  x[n] = (1/4)^n u[n], with zero initial conditions

clear all; close all; clc;

format long; 

% n = [0:7]; x = (1/4).^n ; 
b = [1]; a = [1, -1.5 +0.5];
n = 0:20;  

% Solution of LCCDE for an input sequence x = (1/4).^n with zero initial
% conditions.
x = (1/4).^n ;
y = filter(b,a,x);

figure(); 

subplot(2,1,1);stem(n,y,'m','fill','LineWidth', 1.5);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Response of the System');grid on
axis([-2 21 min(y) max(y)+0.5]);

%%% Manual solution
% y[n] = (1/3)*(1/4).^n -2*(1/2).^n+(8/3)*ones(size(n));

y1 = (1/3)*(1/4).^n - 2*(1/2).^n+(8/3)*ones(size(n));
subplot(2,1,2);stem(n,y1,'b','fill','LineWidth', 1.5);
axis([-2 21 min(y1) max(y1)+0.5]);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Response of the System (Analytical)');grid on
