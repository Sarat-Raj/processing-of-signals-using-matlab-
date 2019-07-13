%
%  Program V4_2 

%%%Demo: Computation of Autocorrelation for periodic DT sequence using
% convolution operation and Matlab built-in function xcorr.m

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
%  

clear all; close all; clc;

N = 96;
n = 1:N;
x = cos(pi*0.25*n);   % Generate the sinusoidal sequence
% x = randn(size(n)); % Generate a random sequence

k = -28:28;
%%% Using Convolution
r = conv(x, fliplr(x)); % Compute the correlation sequence
figure();stem(k, r(68:124),'pr', 'fill', 'LineWidth', 1.5);
xlabel('Lag index'); ylabel('Amplitude'); grid on;
title('Auto-Correlation using Convolution');

%%% Using Matlab built-in function xcorr.m
p = xcorr(x);
figure();stem(k, p(68:124),'pk', 'fill', 'LineWidth', 1.5);
xlabel('Lag index'); ylabel('Amplitude'); grid on;
title('Auto-Correlation using xcorr.m');

% ------------------------------------------------------
