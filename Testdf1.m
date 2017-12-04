x=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
imshow(x)
whos x
%k = iminfo(x)
[height,width,planes] = size(x)
rgb = reshape(x, height, width * planes);
%imagesc(rgb);
%colorbar on
r=image(255,0,0);
g=image(0,255,0);
b=image(0,0,255);
threshold = 100;
imagesc( b < threshold);
blueness = double(b) - max (double(r), double(g));
imagesc(blueness);
%colorbar on
mask = blueness < 45;
imagesc(mask);
