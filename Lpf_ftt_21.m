a=('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\cameraman.bmp');
affftshift=fftshift(fft2(a),1);
figure, imshow(af)
fftshow(af);
[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2);
c=z<15;
af1=af.*c;
fftshow(af1);
af1i=ifft(af1);
ifftshow(af1i);
c=z<5;
af1=af.*c;
fftshow(af1);
af1i=ifft2(af1);
ifftshow(af1i);
fftshow(af1);
c=z<40;
af1=af.*c;
fftshow(af1);
af1i=ifft2(af1);
ifftshow(af1i);

