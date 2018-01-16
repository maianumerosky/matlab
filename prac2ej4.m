function s=prac2ej4(A)

s=zeros(100,1);

for k= 2:100
    x=2*rand(3,1)-1;
    s(k)=max(s(k-1),norm(A*x)/norm(x));
end
s;
plot(1:100,s)
hold on %para no borrar el primer plot
plot(1:100,norm(A))
