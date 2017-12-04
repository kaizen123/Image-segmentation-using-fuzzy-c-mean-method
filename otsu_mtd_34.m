i=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
figure, imshow(i);
%i1=rgb2gray(i);
figure, imshow(i1);
it3=blkproc(i1,[15 15], @adapt);
figure, imshow(it3);