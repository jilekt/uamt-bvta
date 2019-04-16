% lesson: #8 | exercise: #2
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
x  = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
y3 = 2*sin(x) .* cos(x);
y4 = sin(x) ./ cos(x);

% create graphs
figure(2)
clf

subplot(2, 2, 1)
plot(x, y1, 'r')
grid on
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y_1$$', 'interpreter', 'latex')
title('$$y_1 = \sin(x)$$', 'interpreter', 'latex')
legend({'$$\sin(x)$$'}, 'interpreter', 'latex')

subplot(2, 2, 2)
plot(x, y2, 'g')
grid on
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y_2$$', 'interpreter', 'latex')
title('$$y_2 = \cos(x)$$', 'interpreter', 'latex')
legend({'$$\cos(x)$$'}, 'interpreter', 'latex')

subplot(2, 2, 3)
plot(x, y3, 'b')
grid on
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y_3$$', 'interpreter', 'latex')
title('$$y_3 = 2\sin(x)\cos(x)$$', 'interpreter', 'latex')
legend({'$$2\sin(x)\cos(x)$$'}, 'interpreter', 'latex')

subplot(2, 2, 4)
plot(x, y4, 'm')
grid on
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y_4$$', 'interpreter', 'latex')
title('$$y_4 = \frac{\sin(x)}{\cos(x)}$$', 'interpreter', 'latex')
legend({'$$\frac{\sin(x)}{\cos(x)}$$'}, 'interpreter', 'latex')

suptitle('Exercise #2')
