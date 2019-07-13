

%  Program V2_5 

%%%Demo: Amplitude Scaling / Scalar Multiplication: Amplification and Attenuation

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%%% =========================================================

% 
x = [ 2 6 -1 3 -1 5]; %n1 = -2:3;
n = 0:5;

%%% Scalar Multiplication x3 = k*x1, where k is a scaler quantity

%%% Signal Amplification
x1 = 2*x;

%%% Signal Attenuation
x2 = x/2;

figure();
subplot(3,1,1); stem(n, x, 'r', 'fill', 'LineWidth', 1.5);
title('Sequence x[n]= [ 2 6 -1 3 -1 5]'); % grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
% axis([-1 6 -1.5 7]);
axis([-1 6 -3 13]);

subplot(3,1,2); stem(n, x1, 'k', 'fill', 'LineWidth', 1.5);
title('Signal Amplification x1[n] = 2x[n]'); % grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -3 13]);

subplot(3,1,3); stem(n, x2, 'm', 'fill', 'LineWidth', 1.5);
title('Signal Attenuation x2[n] = x[n] /2'); % grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
% axis([-1 6 -1.5 4]);
axis([-1 6 -3 13]);

