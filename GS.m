function x=GS(A,b,k)

n=size(A,1);
C=tril(A);
U=triu(A)-diag(diag(A));
x=zeros(1,n);
y=b;

for i=1:(k-1)

for j=1:n
    x(j)=(y(j)-(x*(C(j,1:n))'))/(C(j,j));
end
y=((-U)*x')'+b;
x=zeros(1,n);
end

for j=1:n
    x(j)=(y(j)-(x*(C(j,1:n))'))/(C(j,j));
end