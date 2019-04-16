% lesson: #3 | exercise: #3
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

Z = magic(6)
X = [Z*Z', zeros(6); eye(6), Z^2]  % limited functionality, only for 6x6 matrix
X = [Z*Z', zeros(length(Z)); eye(length(Z)), Z^2]  % better, limited to square matrices
X = [Z*Z', zeros(size(Z)); eye(size(Z)), Z^2]  % the best, more general
