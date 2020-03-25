clear
close all

% Kijelzõ mérete pixelben
N_h = 720; % [px]
N_v = 480; % [px]

% Kép- és sorfrekvencia
f_kep = 60; % [Hz]
f_sor = f_kep*N_v;

t = (0:100:50*N_v*N_h-1)/(N_v*N_h)/f_kep;
f0 = f_kep;

F = sin(2*pi*f0*t);
F(F<0) = 0;
filt = exp(-t*10);
filt = filt/(sum(filt))*3;
F_filt = conv(F,filt,'same');
%F = F(1:end/50*2);
%F_filt = F_filt(1:end/50*2);
plot(F,'--')
hold on
plot(F_filt)
%ylim([0,0.35])