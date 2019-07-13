
%  Program V4_5 

%%%Demo: %% Inverse Z-transform using impz.m                                                                                                           

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


%------------------------------------------------------------------------
clear all; close all;clc

% 
% Example: (Practice on Power series method) using impz function                                        
% Determine the inverse Z-transform of
% (1+2z-1)/(1+0.4z-1 -0.12z-2)

%  Solution                                                                                                                                    

   L = 11; % Length of output vector (How may values you want in output)
   num = [1 2];
   den = [1 0.4 -0.12];
   [y,t] = impz(num,den,L);
   disp('Coefficient of the power series expansion '); disp(y')
   
   stem(t,y,'r','fill','LineWidth',1.5);  grid on;
   xlabel('time  ----->');ylabel('Amplitude ----->');
   title(' Inverse ZT Sequence');
   axis([-2 12 -0.7 1.8]);
   
