function p=interpoly(x,y)

if not(size(x,2)==size(y,2))
    disp('x e y deben tener el mismo tamaño')
    return
end
n=size(x,2);
dif=zeros(n);
dif(:,1)=y;
for j=2:n
    for i=1:n-j+1
        dif(i,j)=(dif(i+1,j-1)-dif(i,j-1))/(x(i+j-1)-x(i));
    end
end
p=dif(1,1);
for j=2:n
    p=[0,p]+dif(1,j)*poly(x(1:j-1));
end