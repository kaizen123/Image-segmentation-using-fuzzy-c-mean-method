i=imtread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\cameraman.bmp');
isp=imnoise(i,'cameraman',0.1);
figure, imshow(i);
figure, imshow(isp);
a=fspecial('average');
a1=filter2(a,isp);