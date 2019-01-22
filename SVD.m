clc; clear; close all;

img = rgb2gray(imread('lena.jpg'));
subplot(1,2,1);
imshow(img);
title('Grayscale');
img = double(img);

[U, S, V] = svd(img);
I = uint8(U*S*V');

subplot(1,2,2);
imshow(I);
title('Reconstructed from USV values');