
%  Program V4_6 

%%%Demo: %% Inverse Z-transform using Power series method 
% (Practice on Power series method) using filter function
                                                                                                          

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

%------------------------------------------------------------------------
clear all; close all;clc

% 
% Example: (Practice on Power series method) using filter function                                        
% Determine the inverse Z-transform of
% (1+2z-1)/(1+0.4z-1 -0.12z-2)

%  Solution                                                                                                                                     

   n = 0:1:10;
   L = 11; % Length of output vector (How may values you want in output)
   num = [1 2];
   den = [1 0.4 -0.12];
   x=[1,zeros(1,L-1)];
   y=filter(num,den,x);
   stem(n,y,'pr','fill','LineWidth',1.5);
   grid
   disp('Coefficient of the power series expansion are'); disp(y)
   

%     Coefficient of the power series expansion
% 
% 1.0000  1.6000  -0.5200  0.4000  -0.2224  0.1370  -0.0815  0.0490  
% -0.0294  0.0176  -0.0106

%------------------------------------------------------------------------

% Inverse Z-transform                                                                                                                   
%   
% Demo 8  Practice on Power series method) using decov function                                   
% Repeat example 3 with the built-in function "deconv"
% Solution  

% clear all; close all; clc;
num = [1 2];
den = [1 0.4 -0.12];
x = deconv(den,num);  
disp('Coefficient of the power series expansion are'); disp(x)
