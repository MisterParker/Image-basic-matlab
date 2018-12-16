clc
close all
clear all

i1 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/lenna.jpg');
i2 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/aerial.tif');

se = [0 1 0,1 1 1,0 1 0];
erode1 = imerode(i1,se);
erode2 = imerode(i2,se);
figure(1); 
imshow(erode1);
figure(2);
imshow(erode2);