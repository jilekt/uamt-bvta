function [O1, O2, O3, O4] = jilektA(M1, M2, M3, M4, M5, Img1)

% #1
M1(:, Img1{1} ~= 0) = M1(end:-1:1, Img1{1} ~= 0);
O1 = rot90(M1, Img1{2});

% #2
O2 = M2(min(M2, [], 2) >= -1000 | max(M2, [], 2) <= 1000, :);

% #3
q = length(M3);
O3 = zeros(q);

for i = 1:q/2
    O3(i:end-i+1, i:end-i+1) = (q/2-i+1) * ones(q-2*i+2);
end

O3 = M3 ./ O3;

% #4
c = length(M5) / 8;  % item count in row/col per sub-matrix
idx = [1:c, 2*c+1:3*c, 4*c+1:5*c, 6*c+1:7*c];  % indices of rows/cols
O4 = M5(idx, idx) + M4;
