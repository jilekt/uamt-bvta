% lesson: #8 | exercise: #3
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
y = -50:0.1:50;

% create graph
figure(3)
clf

plot3(y .* sin(y), y .* cos(y), y)
grid on
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y$$', 'interpreter', 'latex')
zlabel('$$z$$', 'interpreter', 'latex')
title('Exercise #3')
