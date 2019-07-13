

%  Program V1_12

%%% Load, display and play a song (music with speech)
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


% playing music in matlab

clear all; close all; clc;

load mclips.mat

% command 'whos' at matlab prompt shows all variables in matlab system memory
% in this case, two music clips x and y and a sampling rate fs = 44100 Hz

% plot the audio signal x
n = length(x);
t1 = 0:1:n-1;
figure();plot(t1,x,'r','LineWidth',1.5)

% use the sound command to play clip x
sound(x,fs)


% pause will halt program until you hit a key; hit the a key after the 
% x clip finishes playing, then the  next clip will play

pause

% call sound command to play clip y
% clip y is x with a digital echo at 
% a delay of roughly .1 seconds

m = length(y);
t2 = 0:1:m-1;
plot(t2,y,'b','LineWidth',1.5)

sound(y,fs)

