A=[sin(x)',cos(x)'];
B=A'*A;
c=A'*y';
v=B\c;
f=@(t) v(1)*sin(t)+v(2)*cos(t);
plot(t,f(t))
hold on
plot(x,y,'*r')