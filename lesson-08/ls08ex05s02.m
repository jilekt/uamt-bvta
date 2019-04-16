% lesson: #8 | exercise: #5 | solution: #2
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
n = 81;
x = linspace(-pi, pi, n);

z = zeros(n);
for i = 1:n
    for j = 1:n
        z(i, j) = cos(x(i)^2 + x(j)^2);
    end
end

% create graph
figure(5)
clf

surf(x, x, z)
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y$$', 'interpreter', 'latex')
zlabel('$$z$$', 'interpreter', 'latex')
title('Exercise #5 | Solution #2')
legend({'$$z = \cos(x^2 + y^2)$$'}, 'interpreter', 'latex')
