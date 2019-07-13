



function y = Vsawtooth(x)
% We find the period number of every element
% in the input vector
tn = ceil((x+pi)/(2*pi)); 

% and we subtract that corresponding period from
% the base value. We want final values from -1 to 1
y = ((x - tn*2*pi) + 2*pi)/pi; 


% Demo
% 
% clear, clc, close all 
% 
% t = -6 : .01 : 6;
% x = Vsawtooth(t);
% plot(t,x,'r','LineWidth',1.5)
% axis([-6 6 -1.5 1.5])
% xlabel('time  ----->');ylabel('Amplitude ----->');
% title('Sawtooth Wave'); grid on 
