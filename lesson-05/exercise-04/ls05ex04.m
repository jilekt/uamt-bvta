% lesson #5 | exercise #4
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% generate data
m = magic(1000);

% use internal sum implementation
tic;
t.cpu(1) = cputime;
s1 = sum(sum(m));
t.cpu(1) = cputime - t.cpu(1);
t.rt(1) = toc;

% use user-defined sum2
tic;
t.cpu(2) = cputime;
s2 = sum2(sum2(m));
t.cpu(2) = cputime - t.cpu(2);
t.rt(2) = toc;

t.ratio_cpu = (t.cpu(2) - t.cpu(1)) / t.cpu(1);
t.ratio_rt = (t.rt(2) - t.rt(1)) / t.rt(1);

% print results to console
fprintf('\nsum error: %f\n', s2 - s1);
fprintf('  cputime: #1: %.1f ms  #2: %.1f ms  ratio: %.0f %%\n', t.cpu(1) * 1000, t.cpu(2) * 1000, t.ratio_cpu * 100);
fprintf(' realtime: #1: %.1f ms  #2: %.1f ms  ratio: %.0f %%\n', t.rt(1)  * 1000, t.rt(2)  * 1000, t.ratio_rt  * 100);

% test on 3-D matrix
sum(ones(2, 2, 2))
sum2(ones(2, 2, 2))  % why is it different to internal implementation of sum?
