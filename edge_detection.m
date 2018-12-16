clc
clear all
close all

i1 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/lenna.jpg');
i2 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/aerial.tif');


f1i1 = edge(i1);
f1i2 = edge(i1,'sobel');
f1i3 = edge(i1,'prewitt');
f1i4 = edge(i1,'roberts');
f1i5 = edge(i1,'log');
f1i6 = edge(i1,'canny');

figure(1);
subplot(2,3,1),imshow(f1i1),title('Plane');
subplot(2,3,2),imshow(f1i2),title('sobel');
subplot(2,3,3),imshow(f1i3),title('prewitt');
subplot(2,3,4),imshow(f1i4),title('roberts');
subplot(2,3,5),imshow(f1i5),title('log');
subplot(2,3,6),imshow(f1i6),title('canny');


f2i1 = edge(i2);
f2i2 = edge(i2,'sobel');
f2i3 = edge(i2,'prewitt');
f2i4 = edge(i2,'roberts');
f2i5 = edge(i2,'log');
f2i6 = edge(i2,'canny');

figure(2);
subplot(2,3,1),imshow(f2i1),title('Normal');
subplot(2,3,2),imshow(f2i2),title('sobel');
subplot(2,3,3),imshow(f2i3),title('prewitt');
subplot(2,3,4),imshow(f2i4),title('roberts');
subplot(2,3,5),imshow(f2i5),title('log');
subplot(2,3,6),imshow(f2i6),title('canny');
