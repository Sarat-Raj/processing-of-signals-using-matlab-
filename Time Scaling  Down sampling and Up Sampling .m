

%  Program V2_6 

%%% Demo:Time Scaling  Down sampling and Up Sampling 

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%------------------------------------------------------------------------

% Generate "widget" signal
n = 1:1:8;
x(1:4) = (n(1:4)-1)./4; x(5:8) = ones(1,4);

figure();
subplot(3,1,1), stem(n-1,x,'r','fill','LineWidth', 1.5)
title('Original Sequence'); % grid on
xlabel('Time index n--->'); ylabel('amplitude --->');
axis([-2 10 -0.2 1.2]);

%-----------------------------
% Scaling - downsampling
y = zeros(1,8); y(1:4) = x(1:2:8);
subplot(3,1,2), stem(n-1,y, 'm','fill','LineWidth', 1.5)
xlabel('Time index n--->'); ylabel('amplitude --->');
title('Downsampling by 2')
axis([-2 10 -0.2 1.2]); % grid on

%-----------------------------------
%Scaling - upsampling
y = zeros(1,16);y(1:2:16) = x(1:8);
m =1:length(y);
subplot(3,1,3), stem(m-1,y, 'b','fill', 'LineWidth', 1.5)
xlabel('Time index n--->'); ylabel('amplitude --->');
title('Upsampling by 2'); % grid on
axis([-2 18 -0.2 1.2]);

% %----------------------------------------------------------------
