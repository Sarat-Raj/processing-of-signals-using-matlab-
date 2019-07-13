

%  Program V1_11

%%% Generation and Display of ECG signal
%%% Developed by Dr. M. Venu Gopala Rao, 

%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

load ecg_data.mat

t = 1:1000;

figure(1); plot(t,x,'r','LineWidth',1.5);

xlabel('time  ----->');ylabel('Amplitude ----->');

title('ECG Signal');grid on;
