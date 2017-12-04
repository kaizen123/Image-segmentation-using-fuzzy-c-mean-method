x=1:0.1:10;
y=sin(x);
figure,plot(x,y);
y=sin(x)+1/3*sin(3*x)+1/5*sin(5*x);
figure,plot(x,y);