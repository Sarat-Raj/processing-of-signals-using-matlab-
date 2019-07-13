

% V6_4 Frequency Response of LTI systems using analytical solution
%      Calculate and plot the steady-state response 

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com.

clear all; close all; clc;

% ------------------------------------------------------------
k = -300:300;  %  Select No. of points for both negative 
               %  and positive spectrum
w = (pi/100)*k;% [0, pi] axis divided into 701 points.

% % Demo using analytical solution
H = exp(j*w) ./ (exp(j*w) - 0.9*ones(size(w)));

magH = abs(H); 
angH = angle(H); 
% ------------------------------------------------------------
% Plot the frequency response
figure();
subplot(2,1,1); plot(w/pi,magH,'r','LineWidth',1.5); grid
xlabel('frequency in pi units---->'); ylabel('Magnitude---->');
title('Magnitude Spectrum'); 

subplot(2,1,2); plot(w/pi,angH,'b','LineWidth',1.5); grid
xlabel('frequency in pi units---->');ylabel('Radians---->') ;
title('Phase Spectrum'); 
% ------------------------------------------------------------
% % Steady state response to the input sequence x[n] = cos(0.05*pi*n);

b = 1; a = [1,-0.8];
n = 0:100;

x = cos(0.05*pi*n);

y = filter(b,a,x);

figure();
subplot(2,1,1); stem(n,x,'r','LineWidth',1.5);
xlabel('n'); ylabel('x[n]'); title('Input sequence');

subplot(2,1,2); stem(n,y,'b','LineWidth',1.5);
xlabel('n'); ylabel('y[n]'); title('Output sequence');
