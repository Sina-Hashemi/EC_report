% Entries
V = [2.03, 4.12, 6.25, 8.65, 10.00, 14.26, 16.76, 17.56, 19.75, 21.28, 26.13, 25.70, 26.37, 32.52, 32.27, 33.38, 36.68, 36.40, 38.72, 47.89];
I = [0.97, 1.90, 3.18, 3.94, 5.41, 5.61, 6.66, 7.43, 8.34, 10.73, 11.17, 12.11, 12.07, 14.98, 15.36, 15.52, 17.04, 17.64, 17.38, 18.95];

I = I / 1000;

[a, b] = fitLinearCurve(I, V);

fprintf('The resistance of the resistor is %.2f Ohms\n', a);


figure;
plot(I, V, 'bo'); % data --> blue circles
hold on;
plot(I, a*I + b, 'r-'); % fit --> red line
xlabel('Current (A)');
ylabel('Voltage (V)');
title('Voltage vs. Current and Linear Fit');
legend('Data', 'Linear Fit');
grid on;

function [a, b] = fitLinearCurve(x, y)
    coefficients = polyfit(x, y, 1);
    a = coefficients(1);
    b = coefficients(2);
end

