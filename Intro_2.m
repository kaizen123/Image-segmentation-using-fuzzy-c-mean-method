x= imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\cameraman.bmp')
imshow(x)
subplot(2,1,1)
y= imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
imshow(y)
subplot(2,1,2)
imfinfo('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\cameraman.bmp');
imfinfo('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
 size(x)
 size(y)
 whos x
 whos y