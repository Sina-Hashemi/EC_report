U = linspace(-15, 1, 1000);
I = zeros(size(U));
V_Z = -10;
V_F = 0.7;

for k = 1:length(U)
if U(k) >= V_F
I(k) = 1; % Forward current
elseif U(k) <= V_Z
I(k) = -1; % Zener breakdown current
else
I(k) = 0; % Non-conducting region
end
end

figure;
plot(U, I, 'LineWidth', 2);
xlabel('Voltage (U)');
ylabel('Current (I)');
title('Piecewise Linear Approximation of Zener Diode');
grid on;