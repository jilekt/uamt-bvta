% lesson: #8 | exercise: #5 | solution: #1
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
n = 81;
x = ones(n, 1) * linspace(-pi, pi, n);
y = linspace(-pi, pi, n)' * ones(1, n);
z = cos(x.^2 + y.^2);

% create graph
figure(5)
clf

surf(x, y, z)
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y$$', 'interpreter', 'latex')
zlabel('$$z$$', 'interpreter', 'latex')
title('Exercise #5 | Solution #1')
legend({'$$z = \cos(x^2 + y^2)$$'}, 'interpreter', 'latex')
