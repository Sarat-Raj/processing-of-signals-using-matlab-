

%  Program V2_2 

% % Demo: Multiplication of two DT sequences starting with time axis zero
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%------------------------------------------------------------------------
 % 
x1 = [ 2 1 -1 3 -1 5]; 
x2 = [ 2 3  4 3  2 1]; 

n = 0:5;
x3 = x1.*x2;

figure();
subplot(3,1,1); stem(n, x1, 'r', 'fill', 'LineWidth', 1.5);
title('Sequence x[n]= [ 2  6  -1  3  -1  5]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -1.5 6]);

subplot(3,1,2); stem(n, x2, 'b', 'fill', 'LineWidth', 1.5);
title('Sequence x2 = [ 2  3  4  3  2  1]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -3 5]);

subplot(3,1,3); stem(n, x3, 'm', 'fill', 'LineWidth', 1.5);
title('Signal Multiplication x3[n] = x1[n] x2[n]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -5 10]);

