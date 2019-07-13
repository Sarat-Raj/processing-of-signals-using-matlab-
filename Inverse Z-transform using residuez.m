
%  Program V4_4 

%%%Demo: % Inverse Z-transform using residuez.m                                                                                                                          

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all;clc

%------------------------------------------------------------------------

% Inverse Z-transform           Partial fraction                                                                                                        
% 
% Example 2     (Practice on Partial fraction)                                                                                  
% Use MATLAB determine the partial fraction expansions of
% 
%  H(z) = 18z3 / (18z3 +3z2 -4z -1)
% 
%  Solution                                                                                                                                    

  num = [18 0 0 0];
  den = [18 3 -4 -1];
  
  [r,p,k] = residuez(num,den);

  disp('Residues'); disp(r');
  disp('Poles'); disp(p');
  disp('Constants'); disp(k);

%  Result                                                                                                                                       
% 
%   Residues
%               0.3600   0.2400   0.4000
%   Poles
%               0.5000   -0.3333   -0.3333
%   Constants
%               0
%------------------------------------------------------------------------


%------------------------------------------------------------------------

