clear all;clc;
x=-3:0.01:5;
f=@(t) 15*t.^4-20*t.^3-180*t.^2-10;
F=f(x);
G=sign(F)*500;
plot(x,G)
hold on
plot(x,F,'g')