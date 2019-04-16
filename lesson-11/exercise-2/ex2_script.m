% lesson #12 | exercise #2
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% === CONFIG ===
A = 1:5;
B = 0:5;

f1_a_i = 1;
f1_b_i = 1;
f2_b_i = 1;
f3_a_i = 1;

% === SIMULATION ===
% simulation for different values of parameters a and b
for i = 1:length(A)
    a = A(i);
    for j = 1:length(B)
        b = B(j);
        sim ex2model
        sd(i, j) = ScopeData;
    end
end

% === GRAPHING ===
% u(k), y(k), y(k-1), y(k-2), y(k-3) @ t
figure(1)
clf

linewidths = 0.5 * ones(1, length(sd(f1_a_i, f1_b_i).signals));
linewidths(1) = 2;
for i = 1:length(sd(f1_a_i, f1_b_i).signals)
    stairs(sd(f1_a_i, f1_b_i).time, sd(f1_a_i, f1_b_i).signals(i).values, 'linewidth', linewidths(i))
    hold on
end

grid on
xlabel('t [s]')
ylabel('u(k), y(k), y(k-1), y(k-2), y(k-3) [-]')
title(sprintf('input signal u, output signal y and delayed y (a = %.0f, b = %.0f)', A(f1_a_i), B(f1_b_i)))
legend('u(k)', 'y(k)', 'y(k-1)', 'y(k-2)', 'y(k-3)')

% y @ t @ a
figure(2)
clf

stairs(sd(1).time, sd(1).signals(1).values, 'linewidth', 2)
lg = {'u(k)'};
hold on

for i = 1:length(A)
    stairs(sd(i, f2_b_i).time, sd(i, f2_b_i).signals(2).values)
    lg{end+1} = sprintf('y(k) (a = %.0f, b = %.0f)', A(i), B(f2_b_i));
end

grid on
xlabel('t [s]')
ylabel('y(k) [-]')
title('output signal for different values of parameter a')
legend(lg)

% y @ t @ b
figure(3)
clf

stairs(sd(1).time, sd(1).signals(1).values, 'linewidth', 2)
lg = {'u(k)'};
hold on

for i = 1:length(B)
    stairs(sd(f3_a_i, i).time, sd(f3_a_i, i).signals(2).values)
    lg{end+1} = sprintf('y(k) (a = %.0f, b = %.0f)', A(f3_a_i), B(i));
end

grid on
xlabel('t [s]')
ylabel('y [-]')
title('output signal for different values of parameter b')
legend(lg)

% max(y) @ a @ b
figure(4)
clf

m = zeros(length(A), length(B));
for i = 1:length(A)
    for j = 1:length(B)
        m(i, j) = max(sd(i, j).signals(2).values);
    end
end

surf(B, A, m)
grid on
xlabel('b [-]')
ylabel('a [-]')
zlabel('positive peak value of y(k) [-]')
