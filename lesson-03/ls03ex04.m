% lesson: #3 | exercise: #4
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

A = pascal(4)
B = A(:, 2)
B = A(end, :)
B = A(1:3, :)
B = A(:, [1 end])

B = [A(:, 2) A(:, 2) A(:, 2) A(:, 2) A(:, 2) A(:, 2) A(:, 2) A(:, 2) A(:, 2)]  % the most stupid solution
B = A(:, [2 2 2 2 2 2 2 2 2])  % shorter version of stupid solution
B = A(:, 2 * ones(1, 9))
B = A(:, 2) * ones(1, 9)
B = repmat(A(:, 2), 1, 9)

B = A(end:-1:1, :)  % pay attention: step is -1
B = flipud(A)

B = A([1 3:end], [1:2 4:end])
B = A;
B(2, :) = [];
B(:, 3) = []

B = A(1:3, 2:3)
