function [T,Y]=euler(f,to,tf,h,Yo)

T=[to:h:tf]';
N=length(T);
Y=zeros(N,length(Yo));
Y(1,:)=Yo;

for i=2:N
    Y(i,:)=Y(i-1,:)+h*f(T(i-1),Y(i-1,:));
end