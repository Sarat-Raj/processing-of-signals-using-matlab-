

%  Program V2_3 

%  %%Demo  Reflection  / Folding / Reflection operation
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%------------------------------------------------------------------------
 x = [1  2  3  4  5  6  7];
 n=0:6;
 y = fliplr(x); 
 m = fliplr(n); 
 
figure();
subplot(2,1,1); stem(n, x, 'r', 'fill', 'LineWidth', 1.2);
title('Sequence [1 2 3 4 5 6 7]');  % grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-7 7 -1 8]);

subplot(2,1,2); stem(-m, y, 'b', 'fill', 'LineWidth', 1.2);
title('Reflected Sequence');  % grid on;
xlabel('Time index m ---->'); ylabel('Amplitude---->');
axis([-7 7 -1 8]);