clc; clear; close all;

% Define titles for the three cases
signal_cases = {
    struct('title', 'Convolution of First Signal Pair'),
    struct('title', 'Convolution of Second Signal Pair'),
    struct('title', 'Convolution of Third Signal Pair')
    };

figure('Name', 'Signal Convolutions', 'Position', [100, 100, 600, 800]);

for k = 1:length(signal_cases)
    fprintf('\n--- %s ---\n', signal_cases{k}.title);
    x = input('Enter signal x as a vector (e.g., [1 1 1]): ');
    h = input('Enter signal h as a vector (e.g., [1 1 1]): ');

    % Manual convolution computation
    y = zeros(1, length(x) + length(h) - 1);
    for i = 1:length(x)
        for j = 1:length(h)
            y(i+j-1) = y(i+j-1) + x(i) * h(j);
        end
    end

    % Plotting the result
    subplot(3, 1, k);
    n = 0:length(y)-1;
    stem(n, y, 'filled', 'LineWidth', 1.5);
    grid on;
    title(signal_cases{k}.title);
    xlabel('n');
    ylabel('y[n]');
end