clc
clear all
close all
I = imread('/Users/prakhar/Desktop/Prakhar/CODing/Matlab basic/house.gif');
n = size(I);
glcm = graycomatrix(I,'offset',[0 1],'Symmetric',false)
%[0 255]
% 0 to 31 =1; 31 to 63 =2; 63 to 95 =3; 95 to 127 =4;127 to 159 =5; 159-191 = 6;191 to 233 = 7;233 to 255 = 8;
%Creating the matrix using above ranges
for i = 1:n
    for j= 1:n
        if(I(i,j) <= 31)
            M(i,j)=1;
        elseif (I(i,j) <= 63) && (I(i,j) > 31)
            M(i,j)=2;
        elseif (I(i,j) <= 95) && (I(i,j) > 63)
            M(i,j)=3;
        elseif (I(i,j) <= 127) && (I(i,j) > 95)
            M(i,j)=4;
        elseif (I(i,j) <= 159) && (I(i,j) > 127)
            M(i,j)=5;
        elseif (I(i,j) <= 191) && (I(i,j) > 159)
            M(i,j)=6;
        elseif (I(i,j) <= 223) && (I(i,j) > 191)
            M(i,j)=7;
        elseif (I(i,j) <= 255) && (I(i,j) > 223)
            M(i,j)=8;
        else
            M(i,j)=0;
        end
    end
end


%Now,
%F(x, y) = i and F(x, y + 1) = j.
g =zeros(8);
for i= 1:8
    for j=1:8
        for k=1:n
            for l=1:n-1
                if(M(k,l)==i) && (M(k,l+1)==j) 
                    g(i,j)=g(i,j)+1;
                end
            end
        end
    end
end

display('The gray level Co-occurence Matrix is ')
gT=transpose(g);
g
gT + g

        