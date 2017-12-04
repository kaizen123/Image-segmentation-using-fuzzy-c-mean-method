I = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
f=ones(3,3)/2;
i1=filter2(f,I,'same');
figure,imshow(i1/255)
figure, imshow(I)
f1=fspecial('average',[3 3]);
i2=filter2(f1,I,'same');
figure, imshow(i2/255);
i3=filter2(f1,I,'full');
figure, imshow(i3/255);
f2=fspecial('average',i1);
i4=filter2(f2,I,'same');
figure, imshow(i4/255)
