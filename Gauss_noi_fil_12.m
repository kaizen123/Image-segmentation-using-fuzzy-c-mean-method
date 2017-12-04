clc
I = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
p=impixel(I)
an=imnoise(I,'gaussian',0.01);
an1=impixel(an);
figure, imshow(I);
figure, imshow(an);
sigma=3;
cutoff=ceil(3*sigma);
h=fspecial('gaussian',2*cutoff+1,sigma);
h1=impixel(h);
out=conv2(p,h1,'same');
figure, imshow(out);
figure, imshow(out/256);
out1=conv2(an1,h1,'same');
figure, imshow(out1/256);
w=wiener2(an1,[5 5]);
figure, imshow(w);
%surf=(1,2*cutoff+1,2*cutoff+1,h1);

