function cuencas(p)

r = roots(p);
n =length(r);
dp = polyder(p);

N = 300;
C = hsv(n);

xmin = min(real(r))-0.1;
xmax = max(real(r))+0.1;
ymin = min(imag(r))-0.1;
ymax = max(imag(r))+0.1;

[x,y] = meshgrid(linspace(xmin,xmax,N),linspace(ymin,ymax,N));
z = x+i*y;
A = zeros(N,N,3);
for i=1:5
    z = z - polyval(p,z)./polyval(dp,z);
end

ind = zeros(N,N);
for j=1:N
  for k=1:N
    [d,ind(j,k)] = min(abs(z(j,k)-r));
    A(j,k,:) = C(ind(j,k),:);
  end
end

imshow(A)
    
    


