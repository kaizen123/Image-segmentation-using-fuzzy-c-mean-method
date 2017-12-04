i = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
i1=i>20;
imshow(i)
id=double(i);
id1=id+100;
imshow(uint8(id1));
id2=id+50;
imshow(uint8(id2));
figure, imshow(i)
id2=imadd(i,100);
figure, imshow(id2)
y=imsubtract(i,50);
figure, imshow(y)
y=immultiply(1,0.5);
figure, imshow(y)
y=imdivide(1,0.5);
figure, imshow(y)
y=imcomplement(i);