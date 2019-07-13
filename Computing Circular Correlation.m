
% V8_4  Computing Circular Correlation

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% -----------------------------------------------------------------------

clear all; close all; clc;

x = [1 2 2 1]+1i; h = [1 3 4 1]-2*1i;
N = max(length(x),length(h));
n = 0:N-1;

y = cconv(x,conj(fliplr(h)),7);	% Compute Correlation using cconv;
z = xcorr(x,h);				% Compute using xcorr

M = length(x)+length(h)-1;
m = 0:M-1;

figure();
subplot(4,1,1); stem(0:length(x)-1,x,'r','fill','LineWidth',1.5);
xlabel('Time index ---->'); ylabel('Magnitude---->');
title('Sequence x[n]'); axis([-1 8 0  2.2]);

subplot(4,1,2); stem(0:length(h)-1,h,'b','fill','LineWidth',1.5);
xlabel('Time index---->'); ylabel('Magnitude---->');
title('Sequence h[n]'); axis([-1 8 0 4.2]);

subplot(4,1,3); stem(y,'m','fill','LineWidth',1.5);
xlabel('Time index---->'); ylabel('Magnitude---->');
title('Circularly Correlated sequence using cconv.m');axis([-1 8 0 max(abs(y))+3]);

subplot(4,1,4); stem(z,'k','fill','LineWidth',1.5);
xlabel('Time index---->'); ylabel('Magnitude---->');
title('Circularly Correlated sequence using xcorr.m')
axis([-1 8 0 max(abs(z))+3]);

norm(y-z)
