clc
[x y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2);
c=z>15;
a = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
af=fftshift(fft2(a));
%hp=af.*c;
%fftshow(hp);
hpi=ifft2(hp);
ifftshow(hpi);
c=z>50;
hp=af.*c;
fftshow(hp);
hpi=ifft2(hp);
ifftshow(hpi);
