

%  Program V4_1 

%%%Demo: % Z-transform and Pole-zero plot                                                                                                                               


%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all;clc

% %------------------------------------------------------------------------

%%% Z. Transform

% Demo1: a^n u[n]

syms n a
% x = 'a^n';
x = '(a)^n';

%%% Determining ZT
X = ztrans(sym(x))
pretty(X)
% %------------------------------------------------------------------------
% % Demo2: (0.4)^n u[n]
syms n 
x = '(0.4)^n';

%%% Determining ZT
X = ztrans(sym(x));

 pretty(X)
% Ans: 
% X =
 % z/(z - 0.4)

%%% Determining poles and zeros
num =[1]  ;         
den = [1 -0.4] ;
poles =roots(den);   
zeroes = roots(num);
%%% Plotting Pole-zero diagram.
zplane(num,den);   
title('Pole zero diagram');grid on

% %------------------------------------------------------------------------

%%% Demo3: n*a^n u[n]
syms n a
% x = 'a^n';
x = 'n*(a)^n';
%%% Determining ZT
X = ztrans(sym(x));
pretty(X)
% %------------------------------------------------------------------------

%%% Z. Transform

%%% Demo4: n*(0.4)^n u[n]
syms n a
% x = 'a^n';
x = 'n*(0.4)^n';

%%% Determining ZT
X = ztrans(sym(x));
pretty(X)
% %% Determining poles and zeros
num =[0.4]  ;         
den = [1 -0.8 + 0.16] ;
poles =roots(den);   
zeroes = roots(num);
%%% Plotting Pole-zero diagram.
zplane(num,den);   
title('Pole zero diagram');grid on

% %------------------------------------------------------------------------
%%% Demo5: (1.4)^n u[n]
syms n 

x = '(1.4)^n';

%%% Determining ZT
X = ztrans(sym(x));
pretty(X)

% %% Determining poles and zeros
num =[1]  ;         
den = [1 -1.4] ;
poles =roots(den);   
zeroes = roots(num);
%%% Plotting Pole-zero diagram.
zplane(num,den);   
title('Pole zero diagram');grid on

%------------------------------------------------------------------------

% %%% Demo6
% %  X(z) using ztrans
% %   x(n) = (n-2)(0.5)^(n-2)cos[pi*(n-2)/3]u(n-2)
% x = 'n*((0.5)^n)*cos(pi*n/3)';
% X = ztrans(sym(x));
% [nX,dX] = numden(X);
% expand(nX), expand(dX);
% dX = symmul(dX,'z^2'); expand(dX)
