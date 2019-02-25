% lesson: #2 | exercise: #10
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

help log

t = 1.15;
y = 8*t - 2/3 * ((log(abs(asin(3*pi*t) + t*exp(-t))) + t) + 2^t)^(-2/3)
y = 8*t - 2/3 * power((log(abs(asin(3*pi*t) + t*exp(-t))) + t) + pow2(t), -2/3)
