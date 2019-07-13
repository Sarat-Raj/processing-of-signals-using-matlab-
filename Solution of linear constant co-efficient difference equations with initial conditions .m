
% V5_4 Solution of linear constant co-efficient differewnce equations with
% initial conditions

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com.

%-------------------------------------------------------------------------
%%% Solve  y[n] = (3/2)y[n-1]+(1/2)y[n-2] = x[n],  n >= 0
% where  x[n] = (1/4)^n u[n], subject to y(-1) = 4 and y(-2) = 10

%%% Here the function filter(b,a,x,xic) is used, where xic is an 
%%% equivalent initial condition input  array

%%% By manual solution y[n] = (1/3)*(1/4).^n+(1/2).^n+(2/3)*ones(1,21);

clear all; close all; clc;
format long; 

n = [0:20]; x = (1/4).^n ; xic = [1, -2];
b = [1]; a = [1, -1.5 +0.5];

y1 = filter(b,a,x,xic);

figure(); 
subplot(2,1,1);stem(n,y1,'r','fill','LineWidth', 1.5);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Response of the system');grid on
axis([-2 22 min(y1) max(y1)+0.25]);

%%% Manual solution
y = (1/3)*(1/4).^n+(1/2).^n+(2/3)*ones(1,21);
subplot(2,1,2);stem(n,y,'b','fill','LineWidth', 1.5);
axis([-2 22 min(y) max(y)+0.25]);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Response of the System (Analytical)');grid on
