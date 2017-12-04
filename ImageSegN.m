I=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
imshow(I)
[M, N]=size(I);
for i=1:M
for j=1:N
if (I(i,j)<=T1)
g(i, j)=Zc1;
elseif (I(i,j)>T1 && I(i,j)<=T2)
g(i,j)=Zc2;
else
g(i,j)=Zc3;
end
end
end
x=uint8(g);
figure, imshow(x);
