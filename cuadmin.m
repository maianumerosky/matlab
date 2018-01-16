function v=cuadmin(x,y,k)
n=size(x,2);
for i=1:n   
    for j=1:(k+1)
        A(i,j)=x(i)^(k+1-j);
    end
end
B=A'*A;
c=A'*y';
v=B\c;
