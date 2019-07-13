

%  Program V4_2 

%%%Demo: % Pole-zero plot                                                                                                                               

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all;clc

%------------------------------------------------------------------------

%%% Demo1:

% Find the poles and zeros of the following transfer function and plot
% them onto the z plane. Is this system stable? Why?
%  H[z]= 1/(1-0.9z^-1)

b = [1,0]; a = [1, -0.9];
[H1,H2,H3] = zplane(b,a); 
set(H1,'markersize',10,'color',[0,1,0]); 
set(H2,'markersize',10,'color',[1,0,0]); 
title('Pole-Zero Plot');
text(0.85,-0.1,'0.9');text(0.01,-0.1,'0');

%  Q. Is this system stable? Why?
% 
% Ans. Yes the system is stable, since all of its poles lie inside of unit 
% circle on the z-plane as shown in above figure.

%------------------------------------------------------------------------

%%% Demo2:
% Find the poles and zeros of the following transfer function and plot
% them onto the z plane. Is this system stable? Why?
% z^-1/1-1.4z^-1

num =[1,0]  ;         
den = [1 -1.4] ;
poles =roots(den);   
zeroes = roots(num);
%%% Plotting Pole-zero diagram.
zplane(num,den);   
title('Pole zero diagram');grid on

%  Q. Is this system stable? Why?
% 
% Ans. No the system is unstable, since all of its poles lie outside side of unit
% circle on the z-plane as shown in above figure.

%------------------------------------------------------------------------

%%% Demo3:
% Find the poles and zeros of the following transfer function and plot
% them onto the z plane. Is this system stable? Why?
% H(z) = (2-z^-1) / (1-0.1z^-1 - 0.02z^-2)
% Matlab algorithm is as follows
% 
%  Solution                                                                                                                                    

  num =[2 -1]           
  den = [1 -0.1 -.02] 
  poles = roots(den)   
  zeroes = roots(num)
  figure(); zplane(num,den); grid on;
  title('Pole-zero plot');

%   Ans:
% poles = 0.2000,  -0.1000
% zeroes = 0.5000
% 
%  Q. Is this system stable? Why?
% 
% Ans. Yes the system is stable, since all of its poles lie inside of unit 
% circle on the z-plane as shown in above figure.

%------------------------------------------------------------------------
%%% Demo4:

% Find the poles and zeros of the following transfer function and plot
% them onto the z plane. 

% H(z) = (2.25-2.1z-1-3.95z-2 -1.6z-3 -0,2z-4) / (4-2.96z-1 +0,8z-2 -0,118z-3 -0,0064z-4)
% 
% Solution                                                                                                                                    

  num =[2.25 -2.1 -3.95 -1.6 -0.2]           
  den = [4 -2.96  -0.8 -0.118 -0.0064] 
  poles =roots(den)   
  zeroes = roots(num)
  
  figure(); zplane(num,den); grid
  title('Pole-zero plot');
%   poles =  0.9773,  -0.0750  + 0.1147i,  -0.0750 - 0.1147i,  -0.0872
%   zeroes = 2.0000,  -0.4000,  -0.3333,  -0.3333
% 
%  Q. Is this system stable? Why?
% 
% Ans. Yes the system is stable, since all of its poles lie inside of unit
% circle on the z-plane as shown in above figure.

