

%  Program V2_7 

%%% Demo: Even and Sequence with time index = 0

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%------------------------------------------------------------------------

% x = [1, 2, 3, 4, 5]; 
x = [-3 -2 -1 4 4 4 4];
n = 0:length(x)-1 ;
% n = 0:4;

xr =  fliplr(x);
nr = -fliplr(n);

x1 = [zeros(1,length(xr)-1) x];
xr1 = [xr zeros(1,length(x)-1)];

m = min(nr):max(n);

xe = 0.5*(x1 + xr1);
xo = 0.5*(x1 - xr1);

figure(); 
subplot(4,1,1); stem(n, x, 'r', 'fill', 'LineWidth', 1.5);
title('DT sequence');xlabel('Time Index n----->'); ylabel('Amplitude---->');
axis([min(m)-1 max(m)+1  min(x1)-1 max(x1)+1]);  % grid on

subplot(4,1,2); stem(nr,xr,'k','fill','LineWidth',1.5);
title ('Folding sequence');xlabel('Time Index n----->'); ylabel('Amplitude---->');
axis([min(m)-1 max(m)+1  min(xr1)-1 max(xr1)+1]);% grid on

subplot(4,1,3); stem(m,xe,'m','fill','LineWidth',1.5);
title ('Even sequence');xlabel('Time Index n----->'); ylabel('Amplitude---->');
axis([min(m)-1 max(m)+1  min(xe)-1.5 max(xe)+1]);% grid on

subplot(4,1,4); stem(m,xo,'b','fill','LineWidth',1.5);
title ('Odd sequence');xlabel('Time Index n----->'); ylabel('Amplitude---->');
axis([min(m)-1 max(m)+1  min(xo)-1 max(xo)+1]);% grid on

%%% Check for x = xeven + xodd
y = xe + xo;
figure(); 
subplot(2,1,1);stem(n,x,'b','fill','LineWidth', 1.5); axis([-2 6, -0.5 6]);
title ('Original sequence');xlabel('n ---------->'); ylabel('Magnitude ---->');
subplot(2,1,2);stem(m,y,'m','fill','LineWidth',1.5); axis([-2 6, -0.5 6]);
title ('DT sequence xe + xo');xlabel('n ---------->'); ylabel('Magnitude ---->');
