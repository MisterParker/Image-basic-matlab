clc
clear all
close all
i1 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/project/plane.gif');
i2 = imread('/Users/akshaygugale/Downloads/sem3-VIT/CSE4019/project/house.gif');

[m n] = size(i1);

for k=1:m
    for l=1:n
        b7(k,l) = bitand(i1(k,l),128);
        b6(k,l) = bitand(i1(k,l),64);
        b5(k,l) = bitand(i1(k,l),32);
        b4(k,l) = bitand(i1(k,l),16);
        b3(k,l) = bitand(i1(k,l),8);
        b2(k,l) = bitand(i1(k,l),4);
        b1(k,l) = bitand(i1(k,l),2);
        b0(k,l) = bitand(i1(k,l),0);
    end
end
figure(1);
subplot(3,3,1),imshow(i1),title('Plane img');
subplot(3,3,2),imshow(b0),title('b0');
subplot(3,3,3),imshow(b1),title('b1');
subplot(3,3,4),imshow(b2),title('b2');
subplot(3,3,5),imshow(b3),title('b3');
subplot(3,3,6),imshow(b4),title('b4');
subplot(3,3,7),imshow(b5),title('b5');
subplot(3,3,8),imshow(b6),title('b6');
subplot(3,3,9),imshow(b7),title('b7');

[p q] = size(i2);

for k=1:p
    for l=1:q
        c7(k,l) = bitand(i2(k,l),128);
        c6(k,l) = bitand(i2(k,l),64);
        c5(k,l) = bitand(i2(k,l),32);
        c4(k,l) = bitand(i2(k,l),16);
        c3(k,l) = bitand(i2(k,l),8);
        c2(k,l) = bitand(i2(k,l),4);
        c1(k,l) = bitand(i2(k,l),2);
        c0(k,l) = bitand(i2(k,l),0);
    end
end
figure(2);
subplot(3,3,1),imshow(i2),title('House img');
subplot(3,3,2),imshow(c0),title('c0');
subplot(3,3,3),imshow(c1),title('c1');
subplot(3,3,4),imshow(c2),title('c2');
subplot(3,3,5),imshow(c3),title('c3');
subplot(3,3,6),imshow(c4),title('c4');
subplot(3,3,7),imshow(c5),title('c5');
subplot(3,3,8),imshow(c6),title('c6');
subplot(3,3,9),imshow(c7),title('c7');

