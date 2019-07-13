

%V10_2.m:  Design a low-pass FIR filter using Rectangular window

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% Design a low-pass FIR filter, with cut-off frequency of 5 kHz, length 11 
% using rectangular window. Assume the sampling frequency is 50 kHz.
% Find the filter coefficients, measure the magnitude and phase 
% responses and comment. Plot the magnitude and phase versus real frequency f in Hz.
% 
% Solution                                                                                                                                     
% Cut-off frequency given is 5kHz = 0.2 radians/sec 
% rectangular window

clear all; close all; clc;

N=11;
Rw=boxcar(N);
b=fir1(10,0.2,Rw);
disp('window coefficient = ');disp(Rw')

[h,f]=freqz(b,1,512);% frequency response of the window
mag = 20*log10(abs(h));  %DB magnitude
an = angle(h);

%------------------------------------------------------------------------
n = 0:N-1;
figure(); stem(n, Rw,'m','fill','LineWidth',1.5); grid
xlabel('Time index ------>');
ylabel('Magnitude--->');
title('Rectangular Window');
axis([-1 N -0.05 1.05]);

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


% Result                                                                                                                                        
% 
% Filter coefficient
% 
% b =
% % 0.00000000000000   0.03989988227886   0.08607915423243   0.12911873134864
% 0.15959952911546   0.17060540604922   0.15959952911546   0.12911873134864  
% 0.08607915423243   0.03989988227886   0.00000000000000

% Window coefficient 
% 1     1     1     1     1     1     1     1     1     1     1

%  Comments:
% % Cut-off frequency given is 5kHz = 0.2 radians/sec (shown in freq. response 
% figure)...................ok
% % Ripples are observed at less than -20dB..............................ok
% % In Phase response we observe linear responses......................ok
% % Which show that overall response is satisfactory.


