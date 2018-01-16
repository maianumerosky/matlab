clear all;
f=@(x) 1./(1+25.*x.^2);
x=linspace(-10,10,5);
y=f(x);
p=interpoly(x,y);
t=[-10:0.1:10];
plot(t,f(t))
hold on
plot(t,polyval(p,t),'r')
