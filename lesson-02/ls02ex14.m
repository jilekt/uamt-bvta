% lesson: #2 | exercise: #14
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

B = [-29  9  20
      -1  3   1
      10 -3  -4] / 3;

C = [1  1  3
     1  8  4
     1 -2  3];

A = B + C^-1

A = B + inv(C)
