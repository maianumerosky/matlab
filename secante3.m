function x=secante3(f,a,b,tol)

error = abs(b-a);

while error >= tol
    x = b - f(b) * ((b-a)/(f(b)-f(a)));
    b = a;
    a = x;
    error = abs(b-a);
end