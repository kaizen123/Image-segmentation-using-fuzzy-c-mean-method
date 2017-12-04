i=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
figure, imhist(i);
figure, subplot(2,2,1);
imshow(i);
subplot(2,2,1);
im2bw(i,0.6)
[counts,X]=imhist(i);
p=polyfit(X,counts,6);
y=polyval(p,X);
[v,ind]=sort(abs(diff(y)));
seccondd=diff(v);
[values,i]=min(seccondd);
thres=ind(i)/255;
subplot(2,2,3);
im2bw(i,thresh);
label=graythresh(i);
subplot(2,2,4)
im2bw(i,label)
figure, plot(X,counts);
