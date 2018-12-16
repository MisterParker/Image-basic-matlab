I = imread('/Users/prakhar/Desktop/Prakhar/CODing/Matlab basic/house.gif');
subplot(2,2,1),imshow(I);

corners = detectFASTFeatures(I,'MinContrast',0.1);
J = insertMarker(I,corners,'circle');
subplot(2,2,2),imshow(J);

%after convoluting
k =[0 -1 0;-1 5 -1;0 -1 0];
i_sharp = uint8(conv2(I,k));
subplot(2,2,3),imshow(i_sharp)

corners = detectFASTFeatures(i_sharp,'MinContrast',0.1);
J_s = insertMarker(i_sharp,corners,'circle');
subplot(2,2,4),imshow(J_s);