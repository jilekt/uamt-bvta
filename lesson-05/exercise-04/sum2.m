function S = sum2(X)
%SUM2 Sum of elements. Implementation using cycles.
%   S = SUM(X) is the sum of the elements of the vector X.
%   author: Tomas Jilek <jilekt()feec.vutbr.cz>

if size(X, 1) == 1
    X = X.';
end

S = zeros(1, size(X, 2));

for i = 1:size(X, 2)
    for j = 1:size(X, 1)
        S(i) = S(i) + X(j, i);
    end
end

end
