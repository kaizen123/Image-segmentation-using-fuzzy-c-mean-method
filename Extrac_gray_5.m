img1=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
img1=rgb2gray(img1);
subplot(2,2,1);
imshow(img1);
title('original image');
grayImg=mat2gray(img1);
subplot(2,2,2);
imhist(grayImg);
title('original histogram');