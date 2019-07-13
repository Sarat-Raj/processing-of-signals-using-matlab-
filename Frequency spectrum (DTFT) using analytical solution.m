
% V6_1  Frequency spectrum (DTFT) using analytical solution

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% ------------------------------------------------------------------------

clear all; close all; clc;

k = -300:300;  %  Select No. of points for both negative 
               %  and positive spectrum
w = (pi/100)*k;% [0, pi] axis divided into 701 points.

% % Demo using analytical solution
X = exp(j*w) ./ (exp(j*w) - 0.5*ones(size(w)));

magX = abs(X); 
angX = angle(X); 
realX = real(X); 
imagX = imag(X);

% Plot the frequency response

subplot(2,2,1); plot(w/pi,magX,'r','LineWidth',1.5); grid
xlabel('frequency in pi units---->'); ylabel('Magnitude---->');
title('Magnitude Spectrum'); 

subplot(2,2,2); plot(w/pi,angX,'b','LineWidth',1.5); grid
xlabel('frequency in pi units---->');ylabel('Radians---->') ;
title('Phase Spectrum'); 

subplot(2,2,3); plot(w/pi,realX,'m','LineWidth',1.5); grid
xlabel('frequency in pi units---->');  ylabel('Real');
title('Real Part--->');
 
subplot(2,2,4); plot(w/pi,imagX,'k','LineWidth',1.5); grid
xlabel('frequency in pi units---->');ylabel('Imaginary---->');
title('Imaginary Part'); 

