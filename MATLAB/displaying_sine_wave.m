clear
close all

% Kijelzõ mérete pixelben
N_h = 720; % [px]
N_v = 480; % [px]

% Kép- és sorfrekvencia
f_kep = 60; % [Hz]
f_sor = f_kep*N_v;

% A képernyõn kijelzendõ szinusz frekvenciája
f0 = f_sor + 10;  % [Hz]

for n = 0:100
    t = (0:N_v*N_h-1)/(N_v*N_h)/f_kep + n*1/f_kep;
    
    F = 0.5*sin(2*pi*f0*t) + 0.5;
    F = uint8(255*reshape(F,N_h,N_v)');
    imshow(F);
    pause(0.01)
end
