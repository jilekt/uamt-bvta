% lesson: #8 | exercise: #5 | solution: #4
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
n = 81;
x = linspace(-pi, pi, n);
y = linspace(-pi, pi, n);
z = zeros(n);

for i = 1:n^2
    z(i) = cos(x(rem(i-1, n-1) + 1)^2 + y(fix((i-1) / n) + 1)^2);  % where is a bug?
end

% create graph
figure(5)
clf

surf(x, y, z)
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y$$', 'interpreter', 'latex')
zlabel('$$z$$', 'interpreter', 'latex')
title('Exercise #5 | Solution #4')
legend({'$$z = \cos(x^2 + y^2)$$'}, 'interpreter', 'latex')
