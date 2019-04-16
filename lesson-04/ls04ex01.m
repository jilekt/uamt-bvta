% lesson: #4 | exercise: #1
% author: Tomas Jilek <jilekt()feec.vutbr.cz>
clear

STEP = 0.05;
x = -2*pi:STEP:2*pi;

tic
y1a = 2 * sin(x) .* cos(x);
y2a = sin(x) ./ cos(x);
y3a = exp(x/2);
t1 = toc;

tic
for i = 1:length(x)
    y1b(i) = 2 * sin(x(i)) * cos(x(i));
    y2b(i) = sin(x(i)) / cos(x(i));
    y3b(i) = exp(x(i) / 2);
end
t2 = toc;

figure(1)
clf

subplot(2, 1, 1)
plot(x , y1a, 'b')
hold on
plot(x , y2a, 'r')
plot(x , y3a, 'g')
grid on
xlabel('$$x$$', 'Interpreter', 'Latex')
ylabel('$$y_1, y_2, y_3$$', 'Interpreter', 'Latex')
legend({'$$y_1=2\sin(x)\cos(x)$$', '$$y_2=\frac{\sin(x)}{\cos(x)}$$', '$$y_3=e^{\frac{x}{2}}$$'}, 'Interpreter', 'Latex')
title(sprintf('Implementation in expression: %.3f ms', t1 * 1000))

subplot(2, 1, 2)
plot(x , y1b, 'b')
hold on
plot(x , y2b, 'r')
plot(x , y3b, 'g')
grid on
xlabel('$$x$$', 'Interpreter', 'Latex')
ylabel('$$y_1, y_2, y_3$$', 'Interpreter', 'Latex')
legend({'$$y_1=2\sin(x)\cos(x)$$', '$$y_2=\frac{\sin(x)}{\cos(x)}$$', '$$y_3=e^{\frac{x}{2}}$$'}, 'Interpreter', 'Latex')
title(sprintf('Implementation in cycle: %.3f ms', t2 * 1000))
