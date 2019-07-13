
%  Program V1_2 

%%% Generation and Display of Basic Singularity functions for
%%% Discrete Time Sequences
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;

%%% (1) Generation of Unit Impulse / Sample sequence x[n]=delta[n]
n = -3:1:3;
x=[zeros(1,3), ones(1,1),zeros(1,3)];
figure(1); stem(n,x,'fill','r','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Unit Impulse Sequence x[n]=delta[n]');
axis([-3, 3,-0.2 1.2]); grid on;
% legend('Impulse');

% %%% =========================================================

%%% (2) Discrete Time Unit Step function / Sequence x[n] = u[n]
% N = input('enter the samples =  ');
N = 10;
n = 0:1:N-1;
x =ones(1,N);
figure(3);stem(n,x,'fill','b','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Unit Step Sequence x[n] = u[n]');grid on;
axis([-3, N+1,-0.05 1.2]); 

%%% =========================================================

%%% (3) Discrete Time Unit Ramp Sequence x[n] = r[n] = n;
N = 10;
n = 0:1:N-1;
figure(5);stem(n,n,'fill','m','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Unit Ramp Sequence x[n] = r[n] = n;');grid on;
axis([-3, N+1,-0.5 N]);

%%% =========== All Three signals in single figure ======================

n = -3:1:3;
x=[zeros(1,3), ones(1,1),zeros(1,3)];
figure();
subplot(1,3,1); stem(n,x,'fill','r','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Unit Impulse Sequence x[n]=delta[n]');
axis([-3, 3,-0.2 1.2]); grid on;

N = 10;
n = 0:1:N-1;
x =ones(1,N);
subplot(1,3,2); stem(n,x,'fill','b','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Unit Step Sequence x[n] = u[n]');grid on;
axis([-3, N+1,-0.05 1.2]); 

N = 10;
n = 0:1:N-1;
subplot(1,3,3);stem(n,n,'fill','m','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Unit Ramp Sequence x[n] = r[n] = n;');grid on;
axis([-3, N+1,-0.5 N]);