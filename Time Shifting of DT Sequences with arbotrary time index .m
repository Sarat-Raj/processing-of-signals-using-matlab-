

%  Program V2_4ab: Time Shifting with arbotrary time index 


%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

%%% This demo consider the integer in between 2 and 4 for time delay and 
%%% advancement. For any integer value the axis may be changed



clear all; close all; clc;

%------------------------------------------------------------------------

x = [ 2 1 -1 3 -1 5]; n1 = -2:3;
lower = -2; upper = 3;

figure();
subplot (3,1,1);
y=stem(lower:upper,x, 'k', 'fill', 'LineWidth', 1.5);
axis([lower-5 upper+5 min(x) max(x)+1]);
title('orignal signal x(n)');  % grid on
xlabel('n----->');
ylabel('amplitude');

k=input('x(n) is delayed by value (between 2 and 4) =  ');% for delay by k
n=lower+k;
m=upper+k;
subplot(3,1,2);
y1=stem(n:m,x, 'r', 'fill', 'LineWidth', 1.5);
axis([lower-5 upper+5 min(x) max(x)+1]);
title('delayed signal x(n-k)');  % grid on
xlabel('n----->');
ylabel('amplitude');

j=input('x(n)is advanced by value (between 2 and 4) =  ');% for advancement by j
q=lower-j;
w=upper-j;
subplot(3,1,3);
y2=stem(q:w,x, 'b', 'fill', 'LineWidth', 1.5);
axis([lower-5 upper+5 min(x) max(x)+1]);
title('advanced signal x(n+k)'); % grid on
xlabel('n----->');
ylabel('amplitude');

