
% V7_3a  Computing 4 point FFT

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
%-----------------------------------------------------------------------
clear all; close all; clc;

% Case1:N = 4;

x = [1,1,1,1];
N = 4;
n = 0:N-1;              % Time axis 

X = fft(x,N);
k = 0:N-1;              % Frequency axis 
magX = abs(X); phaX = angle(X)*180/pi;

% Plot the frequency response

subplot(3,1,1); stem(n,x,'r','LineWidth',1.5); grid
xlabel('n---->'); ylabel('Magnitude---->');
title('Original Sequence'); 
axis([-1 N -0.2 1.2]);

subplot(3,1,2); stem(k,magX,'b','LineWidth',1.5); grid
xlabel('frequency K ---->'); ylabel('Magnitude ---->') ;
title('Magnitude Spectrum'); 
axis([-1 N -0.2 4.2]);

subplot(3,1,3); stem(k,phaX,'m','LineWidth',1.5); grid
xlabel('frequency K ---->');  ylabel('Radians---->');
title('Phase Spectrum');
axis([-1 N  min(phaX)-10 max(phaX)+10]);
