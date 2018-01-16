format long
clear all;clc;
a=1;
for k=1:100
    a=a+((-12)^k)/factorial(k);
end
disp(a)

b=1;
for j=1:100
    b=b+(12)^j/factorial(j);
end
1/b
