x=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
t= imresize(x, 0.1);
imshow(t)
a=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\cameraman.bmp');
imshow(a)
[rows, column] = size(a);
 i=1; j=1;
 c= zeros(rows/2, column/2);
 for x = 1:2:rows
     for y = 1:2:column
         c(i,j) = a(x,y);
         j=j+1;
     end
     i=i+1;
     j=1;
 end
 figure, imshow(a);
 figure, imshow(c/255);
 figure, imagesc(c), colormap(gray);

