
%  Program V1_10

%%% Generation and Display of Random Sequence
%%% Developed by Dr. M. Venu Gopala Rao, 

%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;
 
 
 k = -6:15;
 y = randn(size(k));
 figure(); stem(k,y,'b','fill','LineWidth',1.2);
 axis([-7 16 min(y)-1 max(y)+1]);
 title('Random Sequence');
