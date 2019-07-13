
% V7_2  Computing Inverse DFT

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
%-----------------------------------------------------------------------
clear all; close all; clc;

% %%% Inverse DFT for V7_1a
X = [4 0 0 0];

N = length(X);
k = 0:N-1;              % Frequency axis 

x = idft(X,N);          % Inverse DFT
n = 0:N-1;              % Time axis 


figure();
subplot(2,1,1); stem(k,abs(X),'r','fill','LineWidth',1.5); grid
xlabel('n---->'); ylabel('Magnitude---->');
title('Original Sequence'); 
axis([-1 N -0.2 4.2]);

subplot(2,1,2); stem(n,abs(x),'b','fill','LineWidth',1.5); grid
xlabel('frequency K ---->'); ylabel('Magnitude ---->') ;
title('Magnitude Spectrum'); 
axis([-1 N -0.2 1.2]);


%-----------------------------------------------------------------------
% %%% Inverse DFT for V7_1b
X = [4 1-2.4142i 0  1-0.4142i 0 1+0.4142i 0 1+2.4142i];

N = length(X);
k = 0:N-1;              % Frequency axis 

x = idft(X,N);          % Inverse DFT
n = 0:N-1;              % Time axis 


figure();
subplot(2,1,1); stem(k,abs(X),'r','fill','LineWidth',1.5); grid
xlabel('n---->'); ylabel('Magnitude---->');
title('Original Sequence'); 
axis([-1 N -0.2 4.2]);

subplot(2,1,2); stem(n,abs(x),'b','fill','LineWidth',1.5); grid
xlabel('frequency K ---->'); ylabel('Magnitude ---->') ;
title('Magnitude Spectrum'); 
axis([-1 N -0.2 1.2]);
%-----------------------------------------------------------------------
% %%% Inverse DFT for V7_1c
X = [4  3.0137-2.0137i  1-2.4142i  -0.2483-1.2483i ...
     0  0.8341+0.1659i  1-0.4142i   0.4005-0.5995i ...
     0  0.4005+0.5995i  1+0.4142i   0.8341-0.1659i ...
     0 -0.2483+1.2483i  1+2.4142i   3.0137+2.0137i];
 
N = length(X);
k = 0:N-1;              % Frequency axis 

x = idft(X,N);          % Inverse DFT
n = 0:N-1;              % Time axis 

figure();
subplot(2,1,1); stem(k,abs(X),'r','fill','LineWidth',1.5); grid
xlabel('n---->'); ylabel('Magnitude---->');
title('Original Sequence'); 
axis([-1 N -0.2 4.2]);

subplot(2,1,2); stem(n,abs(x),'b','fill','LineWidth',1.5); grid
xlabel('frequency K ---->'); ylabel('Magnitude ---->') ;
title('Magnitude Spectrum'); 
axis([-1 N -0.2 1.2]);
