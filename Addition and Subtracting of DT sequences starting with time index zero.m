

%  Program V2_1 

%%% Demo: Addition and Subtracting of DT sequences starting with time axis zero
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%%% =========================================================

% % Demo: Addition and Subtracting

x1 = [ 2 1 -1 3 -1 5]; 
x2 = [ 2 3  4 3  2 1]; 

n = 0:5;
x3 = x1+x2;
x4 = x1-x2;

figure();
subplot(2,2,1); stem(n, x1, 'r', 'fill', 'LineWidth', 1.5);
title('Sequence x1[n]= [ 2 1 -1 3 -1 5]');grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -2 6]);

subplot(2,2,2); stem(n, x2, 'b', 'fill', 'LineWidth', 1.5);
title('Sequence x2 = [ 2 3  4 3  2 1]');grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -0.5 5]);

subplot(2,2,3); stem(n, x3, 'k', 'fill', 'LineWidth', 1.5);
title('Addition x1+x2');grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -0.5 7]);

subplot(2,2,4); stem(n, x4, 'm', 'fill', 'LineWidth', 1.5);
title('Subtraction x1-x2');grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -6 5]);

%------------------------------------------------------------------------

figure();
subplot(4,1,1); stem(n, x1, 'r', 'fill', 'LineWidth', 1.5);
title('Sequence x1[n]= [ 2 1 -1 3 -1 5]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -2 6]);

subplot(4,1,2); stem(n, x2, 'b', 'fill', 'LineWidth', 1.5);
title('Sequence x2 = [ 2 3  4 3  2 1]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -0.5 5]);

subplot(4,1,3); stem(n, x3, 'k', 'fill', 'LineWidth', 1.5);
title('Addition x1+x2');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -0.5 7]);

subplot(4,1,4); stem(n, x4, 'm', 'fill', 'LineWidth', 1.5);
title('Subtraction x1-x2');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-1 6 -6 5]);
