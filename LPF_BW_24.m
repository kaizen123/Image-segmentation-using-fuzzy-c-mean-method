a=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
lb=butterlp(a,15,1);
af=fftshift(fft2(a));
fftshow(af);
aflb=af.*lb;
fftshow(aflb);
afhbi=ifft2(aflb);
ifftshow(aflbi);