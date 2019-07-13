
%  Program V3_3 

%%%Demo: Computation of cross-correlation using convolution operation and
%        Matlab built-in function xcorr.m

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all;clc;

x = [3 4 1 2 3 4 5];
h = [-1 2 -2 1 3 2 1];

n1=length(x)-1;
n2=length(h)-1;

% Correlation using Convolution operation
r1=conv(x,fliplr(h));

% Correlation using Matlab built in function 'xcorr.m'
k =-n1:n2;
r=xcorr(x,h);

figure();
subplot(4,1,1); stem(0:n1,x,'k','fill','LineWidth', 1.2);
xlabel('Time index n --->'); ylabel('Amplitude'); %grid on;
axis([min(k)-1 max(k)+2 min(x)-1 max(x)+1]);
title('DT Sequence x[n] = [3 4 1 2 3 4 5]'); 

subplot(4,1,2); stem(0:n2,h,'r','fill','LineWidth', 1.2);
xlabel('Time index n --->'); ylabel('Amplitude'); %grid on;
axis([min(k)-1 max(k)+2 min(h)-1 max(h)+1]);
title('DT Sequence h[n] = [-1 2 -2 1 3 2 1]'); 

subplot(4,1,3); stem(k,r1,'b','fill','LineWidth', 1.2);
xlabel('Time index n --->'); ylabel('Amplitude'); %grid on;
axis([min(k)-1 max(k)+2 min(r1)-1 max(r1)+1]);

subplot(4,1,4); stem(k,r,'m','fill','LineWidth', 1.2);
xlabel('Lag index--->'); ylabel('Amplitude'); %grid on;
axis([min(k)-1 max(k)+2 min(r)-1 max(r)+1]);

