% lesson: #3 | exercise: #6
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

A = pascal(9)
% part #1, variant #1
B = A;
B(rem(A, 3) == 0) = -1  % simple, elegant
% part #1, variant #2
B = A;
B(find(rem(A, 3) == 0)) = -1  % obsolete, slow
% part #1, variant #3
B = A .* (rem(A, 3) ~= 0) - (rem(A, 3) == 0)  % possible hardcore
% part #2
B = A
B(sum(A, 2) > 200, :) = []
% part #3
B = A
B(A > 10 & A < 800) = -B(A > 10 & A < 800)
