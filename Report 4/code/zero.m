% Entries 
V = [ .. ,  ..];
I = [.. , ..];

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

