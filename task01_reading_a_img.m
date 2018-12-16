clc
clear all
close all

%Greyscale img
i1 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/project/aerial.tif');
[m1 n1] = size(i1);
%disp(i1);
disp('GreyScale Image');
disp(['Matrix size is ', num2str(m1), ' x ', num2str(n1), ' .']); 

%Coloured img
i2 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/project/lenna_coloured.png');
[m2 n2 o2] = size(i2);
%disp(i2);
disp('Coloured Image');
disp(['Matrix size is ', num2str(m2), ' x ', num2str(n2), ' x ' num2str(o2) , ' .']); 

%Binary img
i3 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/project/Neighborhood.png');
[m3 n3] = size(i3);
%disp(i3);
disp('Binary Image');
disp(['Matrix size is ', num2str(m3), ' x ', num2str(n3), ' .']); 