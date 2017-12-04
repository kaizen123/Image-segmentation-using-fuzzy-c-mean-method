
I = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
 
R = I(:,:,1);
figure;
image(R),colormap([[0:1/255:1]',zeros(256,1),zeros(256,1)]), colorbar;


G = I(:,:,2);
figure;
image(G),colormap([zeros(256,1),[0:1/255:1]',zeros(256,1)]), colorbar;

B = I(:,:,3);
figure;
image(B),colormap([zeros(256,1),zeros(256,1),[0:1/255:1]']),colorbar;