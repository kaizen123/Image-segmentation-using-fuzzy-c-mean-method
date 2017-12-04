clc
I = imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');
r=size(I,1);
c=size(I,2);
ah=uint8(zeros(r,c));
n=r*c;
f=zeros(256,1);
pdf=zeros(256,1);
cdf=zeros(256,1);
cum=zeros(256,1);
out=zeros(256,1);
for i=1:r
    for j=1:c
        value=I(i,j);
        f(value+1)=f(value+1)+1;
        pdf(value+1)=f(value+1)/n;
    end
end
sum=0;
l=255;
for i=1:size(pdf)
    sum=sum+freqz(i);
    cum(i)=sum;
    cdf(i)=cum(i)/n;
    out(i)=round(cdf(i)*l);
end
for i=1:r
    for  j=1:c
        ah(i,j)=out(I(i,j)+1);
    end
end
figure, imshow(ah);
he=histeq(I,64);
figure, imshow(he);

    
    