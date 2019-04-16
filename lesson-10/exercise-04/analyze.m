sim ex04

figure(1)
clf

plot(output_sig.time, output_sig.signals.values(:, 1), 'b')
hold on
plot(output_sig.time, output_sig.signals.values(:, 3), 'r')
xlabel('t [s]')
ylabel('signal value')
legend('signal', 'avg. computation')