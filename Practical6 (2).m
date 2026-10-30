clc; clear; close all;

% Parameters
T = 2 * pi;
W = (2 * pi) / T;
N = 20;

figure('Name', 'Fourier Series Approximations', 'Position', [100, 100, 700, 900]);

% --- 1. Square Wave ---
subplot(3, 1, 1);
t1 = linspace(1, 4 * pi, 100);
sq_wave = zeros(1, length(t1));

for n = 1:2:N
    sq_wave = sq_wave + (4 / (n * pi)) * sin(n * W * t1);
    plot(t1, sq_wave, 'LineWidth', 1.2);
    hold on;
end
grid on;
title('Convolution / Approximation of Square Wave');
xlabel('t');
ylabel('Amplitude');
hold off;

% --- 2. Sawtooth Wave ---
subplot(3, 1, 2);
t2 = linspace(1, 2 * pi, 100);
saw_wave = zeros(1, length(t2));

for n = 1:2:N
    saw_wave = saw_wave + (2 / (n * pi)) * (-1)^(n + 1) * sin(n * W * t2);
    plot(t2, saw_wave, 'LineWidth', 1.2);
    hold on;
end
grid on;
title('Approximation of Sawtooth Wave');
xlabel('t');
ylabel('Amplitude');
hold off;

% --- 3. Triangular Wave ---
subplot(3, 1, 3);
t3 = linspace(0, 4 * pi, 100);
tri_wave = zeros(size(t3));

for n = 1:1:N
    tri_wave = tri_wave + (8 / (n^2 * pi^2)) * (-1)^(n - 1) * sin(n * W * t3);
    plot(t3, tri_wave, 'LineWidth', 1.2);
    hold on;
end
grid on;
title('Approximation of Triangular Wave');
xlabel('t');
ylabel('Amplitude');
hold off;