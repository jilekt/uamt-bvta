% lesson: #5 | exercise: #2
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

q = randn(1, 10^4);

[a_mean, a_std, b_mean, b_std, q_mean, q_std] = meanstd([1 2 3], [4; 5; 6], q);

figure(1)
clf
histogram(q, sqrt(length(q)))
title(sprintf('samples count: %d, mean: %.2f, std: %.2f', length(q), q_mean, q_std))
