

%  Program V3_1a 

%%%Demo: Illustration of Convolution DT sequences starting with time index zero

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


% -----------------------------------------------------------------------

clear all; close all; clc;

% x = input('Type in the first sequence = ');
% h = input('Type in the second sequence = ');

x = [1 2 -1 4 2];
h = [-1 2 -1];
disp(x)
disp(h)

y = conv(x, h);
M = length(y)-1;
n = 0:1:M;
disp('output sequence');disp(y)

figure();
subplot(3,1,1);stem(0:length(x)-1,x, 'pr', 'fill', 'LineWidth', 1.5);
xlabel('Time index n ---->'); ylabel('Amplitude---->');
title('Input Sequence x[n]');%grid on;
axis([-2 M+1 min(x)-1 max(x)+1]);

subplot(3,1,2);stem(0:length(h)-1,h, 'pb', 'fill', 'LineWidth', 1.5);
xlabel('Time index n ---->'); ylabel('Amplitude---->');
title('Input Sequence h[n]');%grid on;
axis([-2 M+1 min(h)-1 max(h)+1]);

subplot(3,1,3);stem(n,y, 'pm', 'fill', 'LineWidth', 1.5);
xlabel('Time index n ---->'); ylabel('Amplitude---->');
title('Convolutional Output y[n]'); %grid on;
axis([-2 M+1 min(y)-1 max(y)+1]);

% 
% Results:
%  x[n] = [ 1     2    -1     4     2];
%  h[n] = [ -1    2    -1];
%  y[n] = [ -1    0     4    -8     7     0    -2];


