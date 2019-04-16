clear
load dataA

[O1, O2, O3, O4] = jilektA(M1, M2, M3, M4, M5, Img1);

figure(1)
subplot(2, 2, 1); imshow(O1);
subplot(2, 2, 2); imshow(O2);
subplot(2, 2, 3); imshow(O3);
subplot(2, 2, 4); imshow(O4);
