clear all
clear all
a=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\cameraman.bmp');
figure;
imshow(a);
[r,c,s]=size(x);
classes=('red''black';'blue';'yellow';'green';'background');
nclasses=length(classes);
sample_regions=false([r c nclasses]);
f=figure;
for count=1:nclasses
    set(f,'name',['select sample region for' classses(count)]);
    sample_regions(:,:,connt)=roipoly(x);
end
close(f);
for count=1:nclasses
    figure
    imshow(sample_regions(:,:,count))
    title(['sample region for' classes(count)]);
end
cform=makeoform('rgb2lab');
lab_x=applycform(x,cform);
a=lab_x(:,:,2);
b=lab_x(:,:,3);
colour_makers=zeros([nclasses,2]);
for count=1:nclasses