
clc
clear all
close all

i1 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/lenna.jpg');
i2 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/Prakhar_project/aerial.tif');

% adding noise
i1_gn = imnoise(i1,'gaussian');
i1_sn = imnoise(i1,'salt & pepper');
i2_gn = imnoise(i2,'gaussian');
i2_sn = imnoise(i2,'salt & pepper');

% kernels
k1 = (1/9).*[1 1 1; 1 1 1; 1 1 1];
k2 = (1/25).*[1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1];
k3 = (1/16).*[1 2 1; 2 4 2; 1 2 1];

%% Applying smoothning on image 1 - plane
i1_gn_k1 = uint8(conv2(i1_gn, k1));
i1_gn_k2 = uint8(conv2(i1_gn, k2));
i1_gn_k3 = uint8(conv2(i1_gn, k3));
i1_sn_k1 = uint8(conv2(i1_sn, k1));
i1_sn_k2 = uint8(conv2(i1_sn, k2));
i1_sn_k3 = uint8(conv2(i1_sn, k3));

figure(1);
subplot(2,5,1),imshow(i1),title('Orignal Image 1');
subplot(2,5,2),imshow(i1_gn),title('Gaussian Noise Added');
subplot(2,5,3),imshow(i1_gn_k1),title('3*3 Avg');
subplot(2,5,4),imshow(i1_gn_k2),title('5*5 Avg');
subplot(2,5,5),imshow(i1_gn_k3),title('3*3 Weighted Avg');
subplot(2,5,6),imshow(i1),title('Orignal Image 2');
subplot(2,5,7),imshow(i1_sn),title('Salt & Pepper Noise Added');
subplot(2,5,8),imshow(i1_sn_k1),title('3*3 Avg');
subplot(2,5,9),imshow(i1_sn_k2),title('5*5 Avg');
subplot(2,5,10),imshow(i1_sn_k3),title('3*3 Weighted Avg');



%% Applying smoothning on image 2 - house
i2_gn_k1 = uint8(conv2(i2_gn, k1));
i2_gn_k2 = uint8(conv2(i2_gn, k2));
i2_gn_k3 = uint8(conv2(i2_gn, k3));
i2_sn_k1 = uint8(conv2(i2_sn, k1));
i2_sn_k2 = uint8(conv2(i2_sn, k2));
i2_sn_k3 = uint8(conv2(i2_sn, k3));

figure(2);
subplot(2,5,1),imshow(i2),title('Orignal Image 1');
subplot(2,5,2),imshow(i2_gn),title('Gaussian Noise Added');
subplot(2,5,3),imshow(i2_gn_k1),title('3*3 Avg');
subplot(2,5,4),imshow(i2_gn_k2),title('5*5 Avg');
subplot(2,5,5),imshow(i2_gn_k3),title('3*3 Weighted Avg');
subplot(2,5,6),imshow(i2),title('Orignal Image 2');
subplot(2,5,7),imshow(i2_sn),title('Salt & Pepper Noise Added');
subplot(2,5,8),imshow(i2_sn_k1),title('3*3 Avg');
subplot(2,5,9),imshow(i2_sn_k2),title('5*5 Avg');
subplot(2,5,10),imshow(i2_sn_k3),title('3*3 Weighted Avg');



%% Applying median filterning on image 1 - plane
i1_gn_m1 = medfilt2(i1_gn);
i1_gn_m2 = medfilt2(i1_gn, [5 5]);
i1_gn_m3 = medfilt2(i1_gn, [10 10]);
i1_sn_m1 = medfilt2(i1_sn);
i1_sn_m2 = medfilt2(i1_sn, [5 5]);
i1_sn_m3 = medfilt2(i1_sn, [10 10]);

figure(3);
subplot(2,5,1),imshow(i1),title('Orignal Image 1');
subplot(2,5,2),imshow(i1_gn),title('Gaussian Noise Added');
subplot(2,5,3),imshow(i1_gn_m1),title('3*3 Median Filter');
subplot(2,5,4),imshow(i1_gn_m2),title('5*5 Median Filter');
subplot(2,5,5),imshow(i1_gn_m3),title('10*10 Median Filter');
subplot(2,5,6),imshow(i1),title('Orignal Image 1');
subplot(2,5,7),imshow(i1_sn),title('Salt & Pepper Noise Added');
subplot(2,5,8),imshow(i1_sn_m1),title('3*3 Median Filter');
subplot(2,5,9),imshow(i1_sn_m2),title('5*5 Median Filter');
subplot(2,5,10),imshow(i1_sn_m3),title('10*10 Median Filter');



%% Applying median filterning on image 2 - house
i2_gn_m1 = medfilt2(i2_gn);
i2_gn_m2 = medfilt2(i2_gn, [5 5]);
i2_gn_m3 = medfilt2(i2_gn, [10 10]);
i2_sn_m1 = medfilt2(i2_sn);
i2_sn_m2 = medfilt2(i2_sn, [5 5]);
i2_sn_m3 = medfilt2(i2_sn, [10 10]);

figure(4);
subplot(2,5,1),imshow(i2),title('Orignal Image 1');
subplot(2,5,2),imshow(i2_gn),title('Gaussian Noise Added');
subplot(2,5,3),imshow(i2_gn_m1),title('3*3 Median Filter');
subplot(2,5,4),imshow(i2_gn_m2),title('5*5 Median Filter');
subplot(2,5,5),imshow(i2_gn_m3),title('10*10 Median Filter');
subplot(2,5,6),imshow(i2),title('Orignal Image 2');
subplot(2,5,7),imshow(i2_sn),title('Salt & Pepper Noise Added');
subplot(2,5,8),imshow(i2_sn_m1),title('3*3 Median Filter');
subplot(2,5,9),imshow(i2_sn_m2),title('5*5 Median Filter');
subplot(2,5,10),imshow(i2_sn_m3),title('10*10 Median Filter');
