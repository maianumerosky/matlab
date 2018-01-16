clear all; clc
k=0:170;
h=10.^(k./10-18);
d=(1./h).*((1+h).^2-1);
plot(linspace(0,3,171),d)
