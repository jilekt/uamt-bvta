% lesson: #8 | exercise: #7
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
[x, y, z] = peaks(50);
z(x > -0.6 & x < 0.5 & y > 0.6 & y < 1.2) = NaN;

% create graph
figure(7)
clf

surf(x, y, z)
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y$$', 'interpreter', 'latex')
zlabel('$$z$$', 'interpreter', 'latex')
title('Exercise #6')
legend({'$$z = f(x, y) = 3 (1 - x)^2 e^{-x^2 - (y+1)^2} - 10(\frac{x}{5} - x^3 - y^5) e^{-x^2 - y^2} - \frac{1}{3} e^{-(x+1)^2 - y^2}$$'}, 'location', 'southoutside', 'interpreter', 'latex')
