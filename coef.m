function  a=coef(x,y)

if not(size(x,2)==size(y,2))
    disp('x e y deben tener el mismo tamaño')
    return
end
n=size(x,2);
A=zeros(n);
for i=1:n
    for j=1:n
        A(i,j)=(x(i))^(n-j);
    end
end
A
(A\y')'