clear all;
clc;
close all;
Im=imread('C:\Users\NIKHIL RAJ\Desktop\PROJECT IMAGE SEGMENTAT-ION\images.jpg');

I=rgb2gray(Im);
imshow(I)
I1=unique(I);
[maxrow maxcol]=size(I1);
n=(maxrow)*(maxcol);
class=3;
m=2;

L=[1 0 0;0 1 0;0 0 1];
L1=[1 0 0;0 1 0;0 0 1];
for J=1:(n-3)/3
    L=vertcat(L,L1);
end
A=[1 0 0];
U=vertcat(L,A);
Uprev=U;
XX=abs(U-Uprev);
AAA=0.01*ones(88,1);
iter=1;
while(iter<=1000)
    Uprev=U;
    for l=1:class
        for p=1:n
            B(p,l)=(U(p,l).^m).*I1(p,1);
        end
    end
    s=sum(B);
    for l=1:1:class
        Zc(1,l)=s(1,l)/sum(U(:,l).^m);
    end

    for j=1:class
        for i=1:n
            Dist(i,j)=abs(I1(i,1)-Zc(1,j));
        end
    end

    for j=1:class
        for i=1:n
            if (Dist(i,j)==0)
                U(i,j)=1;
            else
                ss=0;
                for k=1:class
                    ss=ss+((Dist(i,j)/Dist(i,k))^2/(m-1));
                    U(i,j)=1/ss;
                end
            end
        end
    end
    iter=iter+1
end
Newclassifiedmatrix=zeros(n,class);
for i=1:n
    [best classno]=max(U(i,:));
    Newclassifiedmatrix(i,classno)=1;
end
T1=(Zc(1,1)+Zc(1,2))/4;
T2=(Zc(1,2)+Zc(1,3))/4;
%f=imread('mri.tif');
%imshow(I)
[M N]=size(I);

for i=1:M
for j=1:N
if (I(i,j)<=T1)
g(i, j)=0;
elseif (I(i,j)>T1 && I(i,j)<=T2)
g(i,j)=63;
else
g(i,j)=255;
end
end
end
g
imshow(g);
x=uint8(g);
figure, imshow(x);
%y=gray2ind(x);
%figure, imshow(y);


