function x = rf(f,a,b,n)

if  f(a) == 0
    disp('f(a) = 0');
    return
elseif f(b) == 0
    disp('f(b) = 0');
    return
elseif f(a)*f(b) > 0
    disp('f(a) y f(b) tiene el mismo signo')
    a = input('Inserte un nuevo valor para a: \n');
    b = input('Inserte un nuevo valor para b: \n');
end

for I = 1:n
    m = (f(b)-f(a))/(b-a);
    d = f(a) - m*a; 
    x = -d/m;
    if f(x) == 0
        break
    elseif f(a)*f(x) < 0
        b = x;
    else
        a = x;
    end
end