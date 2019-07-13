

%  Program V3_1b 

%%%Demo: Illustration of Convolution for DT sequences with any arbitrary time index 

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


% -----------------------------------------------------------------------

clear all; close all; clc;

% x = input('Type in the first sequence = ');
% nx = input('Time index vector in the first sequence = ');
% h = input('Type in the second sequence = ');
% nh = input('Time index vector in the second sequence = ');

 

  x = [3, 1, 2, -1, 4, 2]; nx = [-2:3];
  h = [2, 3, 0, -1, 2]; nh = [-1:3];
       
 [y,ny] = Vconv(x,nx,h,nh);
  
 subplot(3,1,1); stem(nx,x,'m','fill', 'LineWidth', 1.5); 
 title('Input sequence x[n]');  % grid on;
 xlabel('Time index n---->');ylabel('Amplitude');
 axis([min(nx)+min(nh)-1 max(nx)+max(nh)+1 min(x)-1 max(x)+1]);
 
 subplot(3,1,2); stem(nh,h,'b','fill', 'LineWidth', 1.5); 
 title('Impulse Response sequence h[n]');  % grid on;
 xlabel('Time index n---->');ylabel('Amplitude');
 axis([min(nx)+min(nh)-1 max(nx)+max(nh)+1 min(h)-1 max(h)+1]);

 subplot(3,1,3); stem(ny,y,'r','fill', 'LineWidth', 1.5); 
 title('Convolution output sequence');  % grid on;
 xlabel('Time index n---->');ylabel('Amplitude');
 axis([min(nx)+min(nh)-1 max(nx)+max(nh)+1 min(y)-1 max(y)+1]);
 
%  


