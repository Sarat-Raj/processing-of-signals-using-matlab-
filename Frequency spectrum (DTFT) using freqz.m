

% V6_2  Frequency spectrum (DTFT) using freqz.m

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com.

% ------------------------------------------------------------------------

clear all; close all; clc;

%%% Determine the discrete-time Fourier transform of x(n) = (0.5)^n u(n)

k = -300:300;  %  Select No. of points (701) for both negative 
               %  and positive spectrum
               
w = (pi/100)*k;% [0, pi] axis divided into 701 points.

num = [1];
den = [ 1 -0.5];
X = freqz(num, den, w);

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
