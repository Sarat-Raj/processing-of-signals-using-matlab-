

%  Program V1_3 

%%% Generation and Display of Periodic Continuous Time Signals
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%%% =========================================================

%Continuous Time Sinusoidal signals x(t)= A*sin(wo*t+theta) 

t = (-pi:0.001:pi)/100;
A = 2; theta = pi/6; f = 100;
x = A*sin(2*pi*f*t + theta);
figure();plot(t,x,'m','LineWidth',1.5);grid on
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Sinusoidal signal');
axis([-0.03, 0.03,-2.15 2.15]);

%%% =========================================================

t = -8 : .01 : 8;
x = Vsquare(t);
figure();plot(t,x,'b','LineWidth',1.5)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Periodic Square Wave'); grid on 
%%% =========================================================

t = -8 : .01 : 8;
x = Vsawtooth(t);
figure();plot(t,x,'k','LineWidth',1.5)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Periodic Sawtooth Wave'); grid on 

%%% =========== All Three signals in single figure ======================

t = (-pi:0.001:pi)/100;
A = 2; theta = pi/6; f = 100;
x = A*sin(2*pi*f*t + theta);
figure();
subplot(3,1,1);plot(t,x,'m','LineWidth',1.5);grid on
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Sinusoidal signal');
axis([-0.03, 0.03,-2.15 2.15]);

%%% =========================================================

t = -8 : .01 : 8;
x = Vsquare(t);
subplot(3,1,2);plot(t,x,'b','LineWidth',1.5)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Periodic Square Wave'); grid on 
%%% =========================================================

t = -8 : .01 : 8;
x = Vsawtooth(t);
subplot(3,1,3);plot(t,x,'k','LineWidth',1.5)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('C.T. Periodic Sawtooth Wave'); grid on 


t = (-pi:0.001:pi)/100;
A = 2; theta = pi/6; f = 100;
x1 = A*sin(2*pi*50*t + theta);
x2 = A*sin(2*pi*120*t + theta);
x3 = A*sin(2*pi*200*t + theta);

figure();
subplot(1,3,1);plot(t,x1,'m','LineWidth',1.5);axis([-0.04 0.04 -2.6 2.6])

% xlabel('time  ----->');ylabel('Amplitude ----->');
% title('C.T. Sinusoidal signal');
% axis([-0.03, 0.03,-2.15 2.15]);

subplot(1,3,2);plot(t,x2,'b','LineWidth',1.5);axis([-0.04 0.04 -2.6 2.6])

subplot(1,3,3);plot(t,x3,'k','LineWidth',1.5);axis([-0.04 0.04 -2.6 2.6])




