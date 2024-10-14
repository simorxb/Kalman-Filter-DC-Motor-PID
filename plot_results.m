% Access the signals from out.logsout

omega = out.logsout.get('omega').Values.Data;
t_omega = out.logsout.get('omega').Values.Time;

current = out.logsout.get('current').Values.Data;
t_current = out.logsout.get('current').Values.Time;

omega_est = out.logsout.get('omega_est').Values.Data(:);
t_omega_est = out.logsout.get('omega_est').Values.Time;

theta = out.logsout.get('theta').Values.Data(:);
t_theta = out.logsout.get('theta').Values.Time;

theta_est = out.logsout.get('theta_est').Values.Data(:);
t_theta_est = out.logsout.get('theta_est').Values.Time;

theta_meas = out.logsout.get('theta_meas').Values.Data;
t_theta_meas = out.logsout.get('theta_meas').Values.Time;

noise = out.logsout.get('noise').Values.Data;
t_noise = out.logsout.get('noise').Values.Time;

voltage = out.logsout.get('voltage').Values.Data;
t_voltage = out.logsout.get('voltage').Values.Time;

setpoint = out.logsout.get('setpoint').Values.Data;
t_setpoint = out.logsout.get('setpoint').Values.Time;

% Plot

figure;
subplot(3,1,1);
stairs(t_setpoint, setpoint, 'LineStyle', '--', 'LineWidth', 2);
hold on;
plot(t_omega, omega, 'LineWidth', 2);
plot(t_omega_est, omega_est, 'LineWidth', 2);
hold off;
ylabel('Setpoint, \omega (rad/s)');
legend({'Setpoint', 'Real', 'Kalman Filter'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

subplot(3,1,2);
plot(t_voltage, voltage, 'LineWidth', 2);
ylabel('Voltage (V)');
set(gca, 'FontSize', 12);
grid on;

subplot(3,1,3);
plot(t_current, current, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Current (A)');
set(gca, 'FontSize', 12);
grid on;