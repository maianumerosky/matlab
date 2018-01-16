clear all;clc;
tic
x=1:100;
x(2)=2;
for k=3:100
    for j=2:(k-1)
        if rem(k,j)==0
            x(k)=1;
            break
        end
    end
end
toc
x