A_x = 0.9; % amplitude of x signal
A_y = 1.1; % amplitude of y signal
omega_x = 5.1; % frequency of x signal
omega_y = 4.5; % frequency of y signal
theta_x = 0; % phase of x signal
theta_y = pi/2; % phase of y signal

t = linspace(0, 3*pi, 1000); % time vector
v_x = A_x * cos(omega_x * t + theta_x); % x signal
v_y = A_y * cos(omega_y * t + theta_y); % y signal
figure;
plot(v_x, v_y);
xlabel('v_x(t)');
ylabel('v_y(t)');
title('Lissajous Curve');
grid on;