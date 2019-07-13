
% V8_1  Computing circular shift of a sequence

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% -----------------------------------------------------------------------
clear all; close all; clc;

N = 10;
n = 0:7; x = 10*(0.8).^n; 
n = 0:N-1; x = [x, zeros(1,2)];
y = cirshftt(x,3,N);
z = cirshftt(x,-4,N);

figure();
subplot(3,1,1); stem(n,x,'r','fill','LineWidth',1.5);
xlabel('n---->'); ylabel('Magnitude---->');
title('Original sequence'); axis([-1 10 -0.2 11]);

subplot(3,1,2); stem(n,y,'b','fill','LineWidth',1.5);
xlabel('n---->'); ylabel('Magnitude---->');
title('Circularly shifted sequence,x((n-3) mod N),N=10')
axis([-1 10 -0.2 11]);

subplot(3,1,3); stem(n,z,'b','fill','LineWidth',1.5);
xlabel('n---->'); ylabel('Magnitude---->');
title('Circularly shifted sequence,x((n+4) mod N),N=10')
axis([-1 10 -0.2 11]);
