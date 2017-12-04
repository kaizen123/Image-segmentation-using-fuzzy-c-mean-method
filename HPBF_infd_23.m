a=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
hb=butterhp(a,15,1);
af=fftshift(fft2(a));
fftshow(af);
afhb=af.*hb;
fftshow(afhb);
afhbi=ifft2(afhb);
ifftshow(afhbi);