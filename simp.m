function s=simp(f,a,b,n)

x=linspace(a,b,n+1);
h=(b-a)/n;
c=0;

for i=1:n
    
    d=f(x(i))+4*f((x(i)+x(i+1))/2)+f(x(i+1));
    c=d+c;

end

s=(h/6)*c;