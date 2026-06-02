
%from lecture notes
Fz = 3000;      % Dikey Yük (N) 
Cx = 50000;     % Lineer Longitudinal Sertlik (N) 
Cy = 30000;     % Lineer Cornering Sertlik (N/rad) 
Csa = 500;      % Lineer Self-Aligning Sertlik (Nm/rad) 
sim_time = 200;
out = sim('Magic_tire_model');

% --- Verileri aç ---
s = out.s_data.signals.values;
Fx = out.Fx.signals.values;

alpha = out.alpha_data.signals.values;
Fy = out.Fy.signals.values;

Msa = out.Msa.signals.values;

% ===================== Fx vs s =====================
figure;
plot(s, Fx, 'LineWidth', 2);

grid on;
xlabel('Slip ratio (s)');
ylabel('Longitudinal Force (F_x)');
title('Tire Magic Formula - F_x vs Slip Ratio');
legend('F_x');

set(gca, 'FontSize', 10);

% ===================== Fy vs alpha =====================
figure;
plot(alpha, Fy, 'LineWidth', 2);

grid on;
xlabel('Slip angle (\alpha)');
ylabel('Lateral Force (F_y)');
title('Tire Magic Formula - F_y vs Slip Angle');
legend('F_y');

set(gca, 'FontSize', 10);

% ===================== Msa vs alpha =====================
figure;
plot(alpha, Msa, 'LineWidth', 2);

grid on;
xlabel('Slip angle (\alpha)');
ylabel('Self Aligning Moment (M_{sa})');
title('Tire Magic Formula - M_{sa} vs Slip Angle');
legend('Msa');

set(gca, 'FontSize', 10);