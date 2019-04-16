% lesson: #4 | exercise: #2
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

MATRIX_SIZE = 4;

A = randi([-5, 5], MATRIX_SIZE)
% check for min/max values
[min(min(A)), max(max(A))]

% a
s1 = 0;
for i = 1:numel(A)
    s1 = s1 + A(i);
end

[s1, sum(sum(A))]

% b
s2 = 0;
for i = 1:numel(A)
    if A(i) > 0
        s2 = s2 + A(i);
    end
end
[s2, sum(A(A>0))]

% c
s3 = 0;
for i = 1:numel(A)
    if A(i) < 0
        s3 = s3 + A(i);
    end
end
[s3, sum(A(A<0))]

% d
s4 = 0;
for i = 1:numel(A)
    if rem(A(i), 2) == 0
        s4 = s4 + A(i);
    end
end
[s4, sum(A(rem(A, 2) == 0))]

% e
s5 = 0;
for i = 1:numel(A)
    if rem(A(i), 2) ~= 0
        s5 = s5 + A(i);
    end
end
[s5, sum(A(rem(A, 2) ~= 0))]
