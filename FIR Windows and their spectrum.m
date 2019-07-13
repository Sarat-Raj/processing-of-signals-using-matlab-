
% V10_1.m  FIR Windows and their spectrum

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

%%%%% ==================================================================
% 
% Generate the following windows with the length of each window should be 21.
% (a) Rectangular, (b) Hanning, (c) Hamming and (d) Kaiser window 
% Also sketch the Frequency (magnitude) responses of the above windows.
% 
% Solution                                                                                                                                    

clear all; close all; clc;

% Rect window
N=21;
Rw=boxcar(N);
[h,omega1]=freqz(Rw,1,256);% frequency response of the window
mag1=20*log10(abs(h)); %DB magnitude

% hanning window
Hnw=hanning(N);
[h,omega2]=freqz(Hnw,1,256);% frequency response of the window
mag2=20*log10(abs(h)); %DB magnitude

% hamming window
Hmw=hamming(N);
[h,omega3]=freqz(Hmw,1,256);% frequency response of the window
mag3=20*log10(abs(h)); %DB magnitude

%kaisar
alpha = 5;
kw=kaiser(N,alpha);
[h,omega4]=freqz(kw,1,256);% frequency response of the window
mag4=20*log10(abs(h)); %DB magnitude

%-------------------Time domain plots -----------------------------

n = 0: N-1;
figure()
subplot(2,2,1); stem(n, Rw,'r','fill','LineWidth',1.5); grid
xlabel('Time index ------>');
ylabel('Magnitude--->');
title('Rectangular Window');
axis([-1 N -0.05 1.2]);

subplot(2,2,2); stem(n, Hnw,'b','fill','LineWidth',1.5); grid
xlabel('Time index ------>');
ylabel('Magnitude--->');
title('Hanning Window');
axis([-1 N -0.05 1.2]);


subplot(2,2,3); stem(n, Hmw,'k','fill','LineWidth',1.5); grid
xlabel('Time index ------>');
ylabel('Magnitude--->');
title('Hamming Window');
axis([-1 N -0.05 1.2]);


subplot(2,2,4); stem(n, kw,'m','fill','LineWidth',1.5); grid
xlabel('Time index ------>');
ylabel('Magnitude--->');
title('Kaiser Window');
axis([-1 N -0.05 1.2]);

%-----------------Frequency Response--------------------------
figure()
plot(omega1/pi,mag1,'r',omega2/pi,mag2,'k',omega3/pi,mag3,'m',omega4/pi,mag4,'c','LineWidth',2); 
xlabel('Normalized frequency');
ylabel('Gain DB');grid
legend('Rectangular','Hanning','Hamming','kaiser');
title('Frequency Responses of Windows');
