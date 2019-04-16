% lesson: #4 | exercise: #3
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

n = 5;

% simple, elegant
M1 = triu(ones(n), 1) - tril(ones(n), -1) + diag(1:n)

% using cycles
% elements above the diagonal
for i = 1:(n-1)
   for j = (i+1):n
        M2(i, j) = 1;
   end
end

% elements below the diagonal
for i = 2:n
   for j = 1:(i-1)
        M2(i, j) = -1;
   end
end

% elements on the diagonal
for i = 1:n
    M2(i, i) = i;
end


M2