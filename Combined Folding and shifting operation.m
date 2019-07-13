

%  Program V2_4c: Combined Folding and shifting operation

%  %%Demo   
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


clear all; close all; clc;

%------------------------------------------------------------------------
 x = [1  2  3  4  5  6  7];
 n0=0:6;
 y = fliplr(x); 
 m = -fliplr(n0); 
 
nr = m + 2 ; %% Shift right by two samples x[n-2];
nl = m - 2 ; %% Shift left by two samples x[n+2];

figure();
subplot(4,1,1); stem(n0, x, 'r', 'fill', 'LineWidth', 1.2);
title('Sequence x[n] = [1   2   3   4   5   6   7]');  % grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-12 12 -1 8]);

subplot(4,1,2); stem(m, y, 'b', 'fill', 'LineWidth', 1.2);
title('Folded Sequence');  % grid on;
xlabel('Time index m ---->'); ylabel('Amplitude---->');
axis([-12 12 -1 8]);

subplot(4,1,3); stem(nr, y, 'b', 'fill', 'LineWidth', 1.2);
title('Folding and shift right by two units x[-n+2]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-12 12 -1 8]);

subplot(4,1,4); stem(nl, y, 'm', 'fill', 'LineWidth', 1.2);
title('Folding and shift left by two units x[-n-2]');%grid on;
xlabel('Time index n ---->'); ylabel('Amplitude---->');
axis([-12 12 -1 8]);

