function x = secante(f,q,p,n)

x = p;

for I = 1:n
    m = (f(p) - f(q))/(p-q);
    if m ~= 0
        x = x - f(x)/m;
        if x > p
            q = p;
            p = x;
        else
            p = q;
            q = x;
        end
    else
        disp('La pendiente de la recta secante se anula.')
        return
    end
end