img1=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
img1=rgb2gray(img1);
figure, imshow(img1);
title('original image');
grayImg=mat2gray(img1);
imhist(grayImg);
fogure, title('original histogram');