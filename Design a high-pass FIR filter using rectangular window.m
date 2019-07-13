
%V10_3.m :Design a high-pass FIR filter using rectangular window

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% Design a high-pass FIR filter, with cut-off frequency of 2 kHz, length 11 
% using rectangular window. Assume the sampling frequency is 50 kHz.
% Find the filter coefficients, measure the magnitude and phase 
% responses and comment. Plot the magnitude and phase versus real frequency f in Hz.
% 
% Solution                                                                                                                                     
% Cut-off frequency given is 2kHz = 0.08 radians/sec 

clear all; close all; clc;

N=11;
Rw=boxcar(N);
b=fir1(10,0.08,'high',Rw);
disp('window coefficient = ');disp(Rw)
[h,f]=freqz(b,1,512);% frequency response of the window
mag=20*log10(abs(h));  %DB magnitude
an = angle(h);

%------------------------------------------------------------------------
n = 0:N-1;
figure(); stem(n, Rw,'m','fill','LineWidth',1.5); grid
xlabel('Time index ------>');
ylabel('Magnitude--->');
title('Rectangular Window');
axis([-1 N+1 -0.05 1.05]);

%------------------------------------------------------------------------
% Magnitude Response
figure();
subplot(2,1,1);plot(f,mag,'r','LineWidth',1.5); grid
xlabel('Real frequency ----->');ylabel('Gain DB ----->');
title('Magnitude Response'); 

% Phase response
phase = angle(h);
subplot(2,1,2); plot(f,phase,'b','LineWidth',1.5);
xlabel('Real frequency ---->');ylabel('Angle in Radians ---->');
title('Phase response'); grid

%------------------------------------------------------------------------

