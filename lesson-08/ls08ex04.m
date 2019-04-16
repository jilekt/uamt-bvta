% lesson: #8 | exercise: #4
% author: Tomas Jilek <jilekt()feec.vutbr.cz>

% data processing
[x, y, z] = peaks(40);

% create graph
figure(4)
clf

subplot(2, 3, 1)
mesh(x, y, z)
title('mesh')

subplot(2, 3, 2)
meshc(x, y, z)
title('meshc')

subplot(2, 3, 3)
meshz(x, y, z)
title('meshz')

subplot(2, 3, 4)
surf(x, y, z)
title('surf')

subplot(2, 3, 5)
surfc(x, y, z)
title('surfc')
