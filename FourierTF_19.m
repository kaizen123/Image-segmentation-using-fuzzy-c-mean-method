clc
x=[2 3 4 5 6 7];
y=fft(x);
ifft(y);
a=ones(8);
fft2(a);
fftshift(fft2(a));
an=[100 200;100 200];
b=repmat(a,4,4);
bf=fft2(b);
a=zeros(256,256);
a(78:178, 78:178)=1;
figure, imshow(a);
af=fft2(a);
figure, imshow(a);
af=fftshift(fft2(a));
figure, imshow(af);
af1=log(1+abs(af));
fm=max(af1(:));
figure, imshow(im2uint8(af1/fm));

