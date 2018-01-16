function v=poligonal(x,y,t)
for j=1:size(t,2)
    i=1;
    while x(i)<=t(j)
        i=i+1;
    end
    v(j)=((y(i)-y(i-1))/(x(i)-x(i-1)))*(t(j)-x(i-1))+y(i-1);
end
