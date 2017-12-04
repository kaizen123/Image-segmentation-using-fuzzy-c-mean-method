ic=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\cameraman.bmp');
px=[-1 0 1;-1 0 1;-1 0 1];
icx=filter2(px,ic);
figure, imshow(icx/255);
py=px';
icy=filter2(py,ic);
figure, imshow(icy/255);
pedge=sqrt(icx.^2+icy.^2);
figure, imshow(pedge/255);
