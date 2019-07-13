
% V8_2  Computing Circular Convolution

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% -----------------------------------------------------------------------

clear all; close all; clc;


x = [1 2 2]; h = [1 2 3 4];
N = max(length(x),length(h));

y = cconv(x,h,N);
n = 0:N-1;

figure();
subplot(3,1,1); stem(0:length(x)-1,x,'r','fill','LineWidth',1.5);
xlabel('Time index ---->'); ylabel('Magnitude---->');
title('Sequence x[n]'); axis([-1 4 0  2.2]);

subplot(3,1,2); stem(0:length(h)-1,h,'b','fill','LineWidth',1.5);
xlabel('Time index---->'); ylabel('Magnitude---->');
title('Sequence h[n]')
axis([-1 4 0 4.2]);

subplot(3,1,3); stem(n,y,'m','fill','LineWidth',1.5);
xlabel('Time index---->'); ylabel('Magnitude---->');
title('Circularly convolved sequence,y[n]')
axis([-1 4 0 max(y)+1]);
