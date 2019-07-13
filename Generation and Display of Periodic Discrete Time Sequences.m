

%  Program V1_4 

%%% Generation and Display of Periodic Discrete Time Sequences
 
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%%% =========================================================


%%%Discrete Time Sinusoidal signal x[n]=A*sin(w0*n+theta);
%%% where omega_zero = 2*pi*(f/fs);
A = 2; theta = pi/6; f = 100; fs = 600;
n = (-4*pi:0.4:4*pi);
x = A*sin(2*pi*(f/fs)*n + theta);
figure(7);stem(n/fs,x,'fill','b','LineWidth',1.5);grid on
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Sinusoidal signal');
axis([-0.02, 0.02,-2.15 2.15]);

%%% =========================================================

t = -8 : .5 : 8;
x = Vsquare(t);
figure();stem(t,x,'fill','r','LineWidth',1.5)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Square Wave'); grid on 
%%% =========================================================

t = -8 : .5 : 8;
x = Vsawtooth(t);
figure();stem(t,x,'fill','k','LineWidth',1.5)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Sawtooth Wave'); grid on 

%%% =========== All Three signals in single figure ======================

A = 2; theta = pi/6; f = 100; fs = 600;
n = (-4*pi:0.4:4*pi);
x = A*sin(2*pi*(f/fs)*n + theta);
figure();
subplot(3,1,1);stem(n/fs,x,'fill','b','LineWidth',1.2);grid on
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Sinusoidal signal');
axis([-0.02, 0.02,-2.15 2.15]);

%%% =========================================================

t = -8 : .5 : 8;
x = Vsquare(t);
subplot(3,1,2);stem(t,x,'fill','r','LineWidth',1.2)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Square Wave'); grid on 
%%% =========================================================

t = -8 : .5 : 8;
x = Vsawtooth(t);
subplot(3,1,3);stem(t,x,'fill','k','LineWidth',1.2)
axis([-8 8 -1.2 1.2])
xlabel('time  ----->');ylabel('Amplitude ----->');
title('D.T. Sawtooth Wave'); grid on 

