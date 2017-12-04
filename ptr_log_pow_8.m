i = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
id=im2double(i);
x=id;
y=id;
[r,c]=size(id);
factor=1;
for z=1:r
    for v=1:c
        x(z,v)=factor*log(1+ id(z,v));
        y(z,v)=factor*id(z,v)^20;
    end
end
subplot(1,2,1);
imshow(id);
title('before')
subplot(1,2,2);
imshow(z);
title('after');
figure, imshow(v);