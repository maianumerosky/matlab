function [x0 e k X]=puntofijocongraf(g,a,b,x0,prec) 
    e=1;k=1;X(1)=x0; 
    while e>prec 
        x=feval(g,x0); 
        e=abs(x-­x0);
        x0=x; 
        k=k+1; 
        X=[X x0];
    end 
z=a:(b­a)/200:b; 
plot(z,z,z,feval(g,z)) 
hold on 
P=[X(1) a]; 
for i=1:k­1 
    P=[P;[X(i) X(i+1);X(i+1) X(i+1)]]; 
end 
for j=1:k 
    plot(P(j,1),P(j,2),'o') 
    plot(P(j,1),a,'x') 
    pause(0.2) 
end 
plot(P(:,1),P(:,2)) 
hold off