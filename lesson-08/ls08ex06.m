% lesson: #8 | exercise: #6
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
n = 41;
[x, y] = meshgrid(linspace(-pi, pi, n));
z = cos(x.^2 + y.^2);

% create graph
figure(6)
clf

surf(x, y, z)
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y$$', 'interpreter', 'latex')
zlabel('$$z$$', 'interpreter', 'latex')
title('Exercise #5 | Solution #1')
legend({'$$z = \cos(x^2 + y^2)$$'}, 'interpreter', 'latex')
