clear all; clc;
a(1)=1;
a(2)=1;
for n=1:98
    a(n+2)=a(n+1)+a(n);
end
for n=1:99
    b(n)=a(n+1)./a(n);
end
b
plot(b)