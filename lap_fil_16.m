clc
I = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
f=fspecial('laplacian');
af=filter2(f,I);
figure, imshow(af);
e=edge(I,'log');
h=fspecial('disk');
e1=edge(I,'zerocros',h);
figure, imshow(e1);
h=fspecial('average');
e2=edge(I,'zerocros',h);
figure, imshow(e2);
h=fspecial('log');
e3=edge(I,'zerocros',h);
figure, imshow(e3);