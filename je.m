clear all; clc
x=2:100;
k=1;
y(1)=2;
for k=1:99
while not(rem(x(k),y(n))==0) && n<length(y)
    n=n+1;
end
if not(rem(x(k),y(n))==0)
    y(n+1)=x(k);
end
n=1;
end

y