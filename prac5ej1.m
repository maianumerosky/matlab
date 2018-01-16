x=[-1 0 2 3];
y=[-1 3 11 27];
p=interpoly(x,y);
t=[-100:0.1:100];
plot(t,polyval(p,t))