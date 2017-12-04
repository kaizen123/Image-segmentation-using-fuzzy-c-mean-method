
I = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
 
I=rgb2gray(I);

hy = fspecial('sobel');
hx = hy';
Iy = imfilter(double(I), hy, 'replicate');
Ix = imfilter(double(I), hx, 'replicate');
gradmag = sqrt(Ix.^2 + Iy.^2);


figure, imshow(gradmag,[]), title('Gradient magnitude (gradmag)')
L = watershed(gradmag);
% Lrgb = label2rgb(L);
 figure, imshow(L), title('Watershed transform of gradient magnitude (Lrgb)')