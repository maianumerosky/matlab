clear all; clc;
format long
a=0; b=1; c=1/sqrt(2); d=1/4; e=1;
for n=1:3
    a=b;
    b=(b+c)/2;
    c=sqrt(c*a);
    d=d-e*(b-a)^2;
    e=2*e;
    n=n+1;
end
f=(b^2)/d
g=(b+c)^2/(4*d)
