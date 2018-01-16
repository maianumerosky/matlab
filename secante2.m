function x = secante2(f,a,b,n)

x=a;

for I=1:n
    m=(f(b)-f(a))/(b-a) ;
    if m ~= 0
        x=x-f(x)/m;
    else
        disp('La pendiente de la secante se anula')
    end
end
 
