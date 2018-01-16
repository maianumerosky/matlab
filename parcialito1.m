clear all;
W=-5:0.1:5;
f = [1 -4 -4 16];
g = [3 -8 -4];
n=size(W,2);
R=zeros(1,n);

for k=1:n
    x=W(k);
    for I=1:100
        if polyval(g,x) ~= 0
        x = x - polyval(f,x)/polyval(g,x);
        else disp('La derivada de f se anula')
            return
        end
    end
    W(k)=x;
end
W