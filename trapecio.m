function s=trapecio(f,a,b,n)

x=linspace(a,b,n+1);
h=(b-a)/n;
c=0;

for i=1:n
    
    d=0.5*(f(x(i))+f(x(i+1)));
    c=d+c;

end

s=h*c;