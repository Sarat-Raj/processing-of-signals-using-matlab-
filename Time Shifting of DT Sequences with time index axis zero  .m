

%  Program V2_4a: Time Shifting of DT Sequences with time index zero


%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%------------------------------------------------------------------------

%%% Demo: Time Shifting time index = 0;

x = [1 2 3 4 5 6 7];
n0 = 0:6;
nr = n0 + 2 ; %% Shift right by two samples x[n-2];
nl = n0 - 2 ; %% Shift left by two samples x[n+2];

figure();
subplot(3,1,1); stem(n0, x, 'r', 'fill', 'LineWidth', 1.2);
title('Original Sequence x[n] = [1 2 3 4 5 6 7]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-3 9 -0.5 8]);

subplot(3,1,2); stem(nr, x, 'b', 'fill', 'LineWidth', 1.2);
title('Shift right by two samples x[n-2]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-3 9 -0.5 8]);

subplot(3,1,3); stem(nl, x, 'm', 'fill', 'LineWidth', 1.2);
title('Shift left by two samples x[n-2]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-3 9 -0.5 8]);

%------------------------------------------------------------------------
