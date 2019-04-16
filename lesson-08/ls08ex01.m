% lesson: #8 | exercise: #1
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
x  = (-1:0.1:1).';  % create linear sequence from -1 to +1 with step 0.1
y1 = exp(x);        % y1 = e^x
y2 = exp(2*x);      % y2 = e^(2x)
y3 = exp(x/2);      % y3 = e^(x/2)
y4 = exp(-x);       % y4 = e^(-x)

% create graphs
figure(1)           % create figure window #1
clf                 % clear current figure window

subplot(3, 1, 1)    % divide to subplots (3 rows, 1 col, current: #1)
plot(x, y1, 'ro-')  % plot y1 = f(x)
hold on             % retain plots in the current axes
plot(x, y2, 'g.--') % plot y2 = f(x)
plot(x, y3, 'bx:')  % plot y3 = f(x)
plot(x, y4, 'm*')   % plot y4 = f(x)
grid on             % show grid
xlabel('$$x$$', 'interpreter', 'latex')
ylabel('$$y_i$$', 'interpreter', 'latex')
title('Exercise #1 | Solution #1')
legend({'$$y_1 = e^x$$', '$$y_2 = e^{2x}$$', '$$y_3 = e^\frac{x}{2}$$', ...
      '$$y_4 = e^{-x}$$'}, 'location', 'northwest', 'interpreter', 'latex')

subplot(3, 1, 2)    % divide to subplots (3 rows, 1 col, current: #2)
plot(x, [y1, y2, y3, y4])
grid on
title('Exercise #1 | Solution #2')

subplot(3, 1, 3)    % divide to subplots (3 rows, 1 col, current: #3)
plot(x, y1, 'r', x, y2, 'g', x, y3, 'b', x, y4, 'm')
grid on
title('Exercise #1 | Solution #3')
