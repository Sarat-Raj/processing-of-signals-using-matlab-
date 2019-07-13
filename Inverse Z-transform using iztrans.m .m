
%  Program V4_3 

%%%Demo: % Inverse Z-transform using iztrans.m                                                                                                                          

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all;clc

%------------------------------------------------------------------------

% Inverse Z-transform           Partial fraction                                                                                                        
%

% Example 11,  Determine Inverse ZT of X = z/(z-a);

syms z a k
X = z/(z-a);
simplify(iztrans(X,k))

ans =
piecewise([a <> 0, a^n])

% Example 2,  Determine Inverse ZT of X = z/(z-2);
     
syms z
X = z/(z-2);
iztrans(X)

% ans =
% 2^n

% Example 3,  Determine Inverse ZT of X = z/(z+0.6);
     
syms z
X = z/(z+0.6);
iztrans(X)

% ans =
% (-3/5)^n


% Example 4,  Determine Inverse ZT of X = 2*z/(z-2)^2;

syms z
X = 2*z/(z-2)^2;
iztrans(X)

% ans =
%  
% 2^n + 2^n*(n - 1)

% Example 4,  Determine Inverse ZT of H(z) = 18z3 / (18z3 +3z2 -4z -1)
% 
%  Solution                                                                                                                                    
syms z n

H = 18*z^3 / (18*z^3 +3*z^2 -4*z -1);
iztrans(H)

% ans =
%  
% (9*(1/2)^n)/25 + (26*(-1/3)^n)/25 + (2*(-1/3)^n*(n - 1))/5
%------------------------------------------------------------------------


%------------------------------------------------------------------------

