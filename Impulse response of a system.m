

%%% Program V5_1.m Impulse response of a system

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
%-------------------------------------------------------------------------

% Demo1: Impulse response 
%%% Solution of linear constant co-efficient differewnce equations
% Solve  y[n] - (3/2)y[n-1]+(1/2)y[n-2] = x[n],  n >= 0

clear all; close all; clc;

format long; 

% n = [0:7]; x = (1/4).^n ; 
b = [1]; a = [1, -1.5 +0.5];

% Impulse response of the system using impz.m
N = 21;
n = [0:N-1];  
h1 = impz(b,a,n); 

% Impulse response of the system using filter.m
v = [ones(1,1) zeros(1,N-1)];  %% define impulse sequence as in put
h2 = filter(b,a,v);

% Impulse response of the system by analytical solution
% h = 2u[n]-(1/2)^n u[n]
ha = 2*ones(size(n))-(1/2).^n;

figure(); 
subplot(3,1,1);stem(n,h1,'r','fill','LineWidth', 1.5);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Impulse Response using impz.m');grid on
axis([-2 21 min(h1) max(h1)+0.25]);

subplot(3,1,2);stem(n,h2,'b','fill','LineWidth', 1.5);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Impulse Response using filter.m');grid on
axis([-2 21 min(h2) max(h2)+0.25]);

subplot(3,1,3);stem(n,ha,'k','fill','LineWidth', 1.5);
xlabel('Time-index n---->');ylabel('Amplitude');
title('Impulse Response Analytical Solution');grid on
axis([-2 21 min(ha) max(ha)+0.25]);

% parsum = 0;
% for k = 1:N
%     parsum = parsum + abs(h1(k));
%     if abs(h1(k)) <  10^(-6),
%         break
%     end
% end

%  T = abs (h1); 
 T = abs (h2); 
 t = sum (T); 
if (t < 1000) 
disp (' Stable ') 
else 
disp (' Unstable ') 
end; 


