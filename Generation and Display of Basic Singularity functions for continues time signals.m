
%  Program V1_1 

%%% Generation and Display of Basic Singularity functions for
%%% Continuous Time Signals
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com

clear all; close all; clc;

%%% (1) Generation of Unit Impulse function
t = -3:1:3;
x=[zeros(1,3), ones(1,1),zeros(1,3)];
figure(1); stem(t,x,'fill','r','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Unit Impulse Function');
axis([-3, 3,-0.2 1.2]); grid on;
% legend('Impulse');

% %%% =========================================================
%%% (2) Generation of Unit Step function / sequnce
%%% (a) Continuous Time Unit Step function x(t) = u(t)
% k = input('enter the samples =  ');
k = 10;
t = 0:1:k-1;
x = ones(1,k);
figure(2);plot(t,x,'b','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Unit Step Function');grid on;
axis([-1, k-1,0 1.2]); 

%%% =========================================================
%%% (3) Generation of Unit Ramp function / sequnce
%%% (a) Continuous Time Unit Ramp Function x(t) = r(t) = t; 
% k = input('enter the samples =  ');
k = 10;
t = 0:1:k-1;
figure(3);plot(t,t,'m','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Unit Ramp Function');grid on;
axis([-0.05, 1.2,-0.05 1.2]);

%%% =========== All Three signals in single figure ======================

t = -3:1:3;
x=[zeros(1,3), ones(1,1),zeros(1,3)];
figure();
subplot(1,3,1);stem(t,x,'fill','r','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Unit Impulse Function');
axis([-3, 3,-0.2 1.2]); grid on;

k = 10;
t = 0:1:k-1;
x = ones(1,k);
subplot(1,3,2);plot(t,x,'b','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Unit Step Function');grid on;
axis([-1, k-1,0 1.2]); 

subplot(1,3,3);
plot(t,t,'m','LineWidth',1.5);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Unit Ramp Function');grid on;
axis([-0.05, 1.2,-0.05 1.2]);
