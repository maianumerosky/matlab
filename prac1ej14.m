clear all; clc;
a=1+1/8;
a_vieja=1;
k=3;
while not(a_vieja==a)
    a_vieja=a;
    a=a+1/k^3;
    k=k+1;
end
a
k-1