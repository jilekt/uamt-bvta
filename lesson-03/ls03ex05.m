% lesson: #3 | exercise: #5
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

A = pascal(6)
B = A;

B(:, 5) = A(2, :)

B([1 2 4], :) = [1; 1; 1] * A(:, end).'
%B([1 2 4], :) = repmat(A(:, end).', 3, 1)

B(:, [1 3]) = B(:, [3 1])

B(2, :) = [];
B(:, 3) = []
