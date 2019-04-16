% lesson: #5 | exercise: #1
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% in-line function [obsolete]
qroots1 = inline('[(-b + sqrt(b.^2 - 4*a.*c))/2 ./ a, (-b - sqrt(b.^2 - 4*a.*c))/2 ./ a]', 'a', 'b', 'c');

% anonymous function
qroots2 = @(a, b, c) [(-b + sqrt(b.^2 - 4*a.*c))/2 ./ a, (-b - sqrt(b.^2 - 4*a.*c))/2 ./ a];

% use defined in-line function qroots1
qroots1(1, -4, 3)  % a^2 - 4a + 3 = (a - 1)(a - 3) => a1 = 1; a2 = 3
qroots1([1; 1], [-4; -4], [3; 3])  % two quadratic equations

% use defined anonymous function qroots2
qroots2(1, -4, 3)
qroots2([1; 1], [-4; -4], [3; 3])
