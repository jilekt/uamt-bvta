% lesson: #8 | exercise: #5 | solution: #3
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
n = 81;
x = repmat(linspace(-pi, pi, n)  , n, 1);
y = repmat(linspace(-pi, pi, n).', 1, n);
z = zeros(n);

for i = 1:n^2
    z(i) = cos(x(i)^2 + y(i)^2);
end

% create graph
figure(5)
clf

surf(x, y, z)
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y$$', 'interpreter', 'latex')
zlabel('$$z$$', 'interpreter', 'latex')
title('Exercise #5 | Solution #3')
legend({'$$z = \cos(x^2 + y^2)$$'}, 'interpreter', 'latex')
