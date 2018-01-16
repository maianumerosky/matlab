function x=despeje(A,b)
if not(length(b)==size(A,1) && length(b)==size(A,2))
    disp 'Los tamaños de b y A no coinciden o A no es cuadrada'
    return
end

[L,U]=gauss(A);
n=size(A,1);

y=zeros(1,n);
x=zeros(1,n);

y(1)=b(1);

for i=2:n
    y(i)=b(i)-(y*(L(i,1:n))');
end

x(n)=y(n)/U(n,n);
for j=(n-1):-1:1
    x(j)=(y(j)-(x*(U(j,1:n))'))/(U(j,j));
end
y