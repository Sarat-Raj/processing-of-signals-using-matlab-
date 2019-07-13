

%  Program V2_8 

%%% Demo:   Calculating the energy or power in the signal 

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%------------------------------------------------------------------------

%======== Energy for DT Aperiodic sequence
    x = [ 0 1 2 2 2]; %% Aperiodic sequence
    Energy = sum(abs(x).^2)
    
%======  power for DT Aperiodic sequence===============
%%% Example1
    x = [1 2 2 2];  %Periodic sequence with period N = 4
    N = 4;
    Power = (1/N)*sum(abs(x).^2)
    
%======  power for DT Aperiodic sequence===============
%%% Example2
    n = 0:4; x = 2*(-1).^n;  %Periodic sequence with period N = 5
    N = 4;
    Power = (1/N)*sum(abs(x).^2)
    
    