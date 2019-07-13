
%  Program Vsquare.m 

%%% Generation and Display of Periodic Square wave for
%%% Continuous Time Signals
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


% Program 1
% function y = Vsquare(x)
% % we set a default value of 1
% y = ones(1, length(x)); 
% 
% % we find elements in the second half of the period by
% % dividing every cycle in two. The first half is odd,
% % the second half is even
% t = mod(ceil(x/pi), 2) == 0; 
% 
% % we set a -1 only for elements in the second half of every period
% % y(find(t)) = -1;
% y(t) = -1;


% % Program 2
% function y = Vsquare(x)
% % We'll inspect every value of the vector
% for i = 1 : length(x)
%     % Total length of high and low values are pi
%     t = ceil(x(i)/pi);
%     if mod(t, 2)==0
%         % if x(i) is in the last half, we set a -1
%         y(i) = -1;
%     else
%         % if x(i) is in the first half, we set a +1
%         y(i) = 1;
%     end
% end

% % % Program 3
function y = Vsquare(x)
y = sin(x); 

% we find positive elements and represent them as 1
y(find(y >= 0)) = 1; 

% we find negative elements and represent them as -1
y(find(y < 0)) = -1;


%%% Demo:
% 
% clear all;close all;clc; 
% t = -8 : .01 : 8;
% x = Vsquare(t);
% plot(t,x,'r','LineWidth',1.5)
% axis([-8 8 -1.2 1.2])
% xlabel('time  ----->');ylabel('Amplitude ----->');
% title('Square Wave'); grid on 




    



