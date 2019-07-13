
% V6_3 Frequency Response of LTI systems using analytical solution

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com.

clear all; close all; clc;

k = -300:300;  %  Select No. of points for both negative 
               %  and positive spectrum
w = (pi/100)*k;% [0, pi] axis divided into 701 points.

% % Demo using analytical solution
H = exp(j*w) ./ (exp(j*w) - 0.9*ones(size(w)));

magH = abs(H); 
angH = angle(H); 

% Plot the frequency response

subplot(2,1,1); plot(w/pi,magH,'r','LineWidth',1.5); grid
xlabel('frequency in pi units---->'); ylabel('Magnitude---->');
title('Magnitude Spectrum'); 

subplot(2,1,2); plot(w/pi,angH,'b','LineWidth',1.5); grid
xlabel('frequency in pi units---->');ylabel('Radians---->') ;
title('Phase Spectrum'); 
