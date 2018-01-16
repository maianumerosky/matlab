function x = nr(f,g,p,n)

x = p;

for I = 1:n
    if g(x) ~= 0
        x = x - f(x)/g(x);
    else
        disp('La derivada de f se anula.')
        return
    end
end