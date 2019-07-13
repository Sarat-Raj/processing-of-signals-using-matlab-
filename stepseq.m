
%%%% Unit Step Sequence

function [x,n] = stepseq(n0,n1,n2)
% Generates x(n) = u(n-n0); n1 <= n <= n2
% ------------------------------------------
% [x,n] = stepseq(n0,n1,n2)
%
n = [n1:n2]; x = [(n-n0) >= 0];


%% Demo-1: step >= 1; for n = 0;
%               = 0; for n ~= 0;
%     clear all; close all; clc;
%     n0 = 0;
%     n1 = -3;
%     n2 = 10;
%     [x,n] = stepseq(n0,n1,n2);
%     figure(); stem(n,x,'r','fill', 'LineWidth', 1.5);
%     xlabel('Time index ---->'); ylabel('Amplitude');
%      axis([n1-2 n2+2 -0.25 1.2]); grid on;
%     title('Unit Step Sequence u[n]');

%% Demo-2:   Right side shifting step(n-2);
%     clear all; close all; clc;
%     n0 = 2;
%     n1 = -3;
%     n2 = 10;
%     [x,n] = stepseq(n0,n1,n2);
%     figure(); stem(n,x,'r','fill', 'LineWidth', 1.5);
%     xlabel('Time index ---->'); ylabel('Amplitude');
%     axis([n1-2 n2+2 -0.25 1.2]); grid on;
%     title('Unit Step Sequence u[n-2]');

%% Demo-3:   Left side shifting step(n+3);
%     clear all; close all; clc;
%     n0 = -3;
%     n1 = -3;
%     n2 = 3;
%     [x,n] = stepseq(n0,n1,n2);
%     figure(); stem(n,x,'r','fill', 'LineWidth', 1.5);
%     xlabel('Time index ---->'); ylabel('Amplitude');
%     axis([n1-2 n2+2 -0.25 1.2]); grid on;
%     title('Unit Step Sequence u[n+3]');
