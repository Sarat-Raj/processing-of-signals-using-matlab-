
%%% Modified Convolution operation 

function [y,ny] = Vconv(x,nx,h,nh)

% Modified Convolution operation for arbotrary sequences starting with
% any time indexes.
% 
% % Input:
%     x :  Input / first sequence
%     nx:  Input / first sequence time index
%     h :  Impulse Response sequence of the system
%     nh:  Corresponding sequence time index
%     
% Output:
%     y :  Convolution result output sequence
%     ny:  Corresponding sequence time index 

  n1 = nx(1)+nh(1); 
  n2 = nx(length(x)) + nh(length(h));
  ny = n1:n2; y = conv(x,h);
 