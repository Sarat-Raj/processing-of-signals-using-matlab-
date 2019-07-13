

%%% Program V5_2.m Step response of a system

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
%-------------------------------------------------------------------------
% Demo1: Step response 
%%% Solution of linear constant co-efficient differewnce equations
% Solve  y[n] - (3/2)y[n-1]+(1/2)y[n-2] = x[n],  n >= 0

clear all; close all; clc;

format long; 

b = [1]; a = [1, -1.5 +0.5];
n = 0:20;  

% Step response of the system
s = stepseq(0,0,20);
ys = filter(b,a,s);

% Impulse response of the system by analytical solution
% ya = (1/2)^n u[n]+2nu[n]
ya = (1/2).^n + 2*n.*ones(size(n));

figure(); 
subplot(2,1,1);stem(n,ys,'r','fill','LineWidth', 1.5);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Step Response ys[n]');grid on
axis([-2 21 min(ys) max(ys)+1]);

subplot(2,1,2);stem(n,ya,'k','fill','LineWidth', 1.5);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Step Response ya[n]');grid on
axis([-2 21 min(ya) max(ya)+1]);

