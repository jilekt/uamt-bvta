% lesson: #2 | exercise: #17
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

myField = {pi, '1x2'; '2x1', [0 1; 2 3]};

myField{2, 2}(1, 2) = 3;
myField{4}(3) = 3;
