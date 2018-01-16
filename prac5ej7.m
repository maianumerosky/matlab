x=linspace(1,10,5);
f=@(x) 1./x;
y=f(x);
z=log(y);
p=interpoly(x,z);
t=[1:0.01:10];
plot(t,polyval(p,t))
