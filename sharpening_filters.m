
clc
clear all
close all


i1 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/lenna.jpg');
i2 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/aerial.tif');

n1i1 = imnoise(i1,'gaussian');
n2i1 = imnoise(i1,'salt & pepper');
n1i2 = imnoise(i2,'gaussian');
n2i2 = imnoise(i2,'salt & pepper');


kernel1 = [-1 -2 -1; 0 0 0 ; 1 2 1];
kernel2 = [-1 0; 0 1];

%fi = filtered image
f1i1 = uint8(conv2(double(i1), double(kernel1)));
f1i2 = uint8(conv2(double(n1i1), double(kernel1)));
f1i3 = uint8(conv2(double(n2i1), double(kernel1)));

f1i4 = uint8(conv2(double(i1), double(kernel2)));
f1i5 = uint8(conv2(double(n1i1), double(kernel2)));
f1i6 = uint8(conv2(double(n2i1), double(kernel2)));

figure(1);
subplot(2,4,1),imshow(n1i1),title('Gaussian Noise img');
subplot(2,4,2),imshow(f1i1),title('kernel1 on img 1');
subplot(2,4,3),imshow(f1i2),title('kernel1 on n1i1');
subplot(2,4,4),imshow(f1i3),title('kernel1 on n2i1');
subplot(2,4,5),imshow(n2i1),title('Salt & Pepper Noise img');
subplot(2,4,6),imshow(f1i4),title('kernel2 on orignal img');
subplot(2,4,7),imshow(f1i5),title('kernel2 on n1i1');
subplot(2,4,8),imshow(f1i6),title('kernel2 on n2i1');

f2i1 = uint8(conv2(double(i2), double(kernel1)));
f2i2 = uint8(conv2(double(n1i2), double(kernel1)));
f2i3 = uint8(conv2(double(n2i2), double(kernel1)));

f2i4 = uint8(conv2(double(i2), double(kernel2)));
f2i5 = uint8(conv2(double(n1i2), double(kernel2)));
f2i6 = uint8(conv2(double(n2i2), double(kernel2)));

figure(2);
subplot(2,4,1),imshow(n1i2),title('Gaussian Noise img');
subplot(2,4,2),imshow(f2i2),title('kernel1 on img 2');
subplot(2,4,3),imshow(f2i2),title('kernel1 on n1i2');
subplot(2,4,4),imshow(f2i3),title('kernel1 on n2i2');
subplot(2,4,5),imshow(n2i2),title('Salt & Pepper Noise img');
subplot(2,4,6),imshow(f2i4),title('kernel2 on orignal img');
subplot(2,4,7),imshow(f2i5),title('kernel2 on n1i2');
subplot(2,4,8),imshow(f2i6),title('kernel2 on n2i2');

