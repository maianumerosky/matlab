clear all

%item 1

T=[0:0.1:10];
for vo=0:5:60
n=length(T);
V=zeros(1,n);
V(1)=vo;
for i=2:n
    V(i)=V(i-1)+0.1*((-9*10^(-5)/0.0083)*(V(i-1))^2+9.8);
endfor
figure(1)
plot(T,V)
hold on
endfor

%item 2

S=[0:2:10];
k=length(S);
W=zeros(1,k);
W(1)=20;
for j=2:k
    W(j)=W(j-1)+2*((-9*10^(-5)/0.0083)*(W(j-1))^2+9.8);
endfor
figure(2)
plot(S,W)

%item 3


Zinf=sqrt(9.8*70/0.2);
Z(1)=0;
Z(2)=Z(1)+0.1*((-0.2/70)*(Z(1))^2+9.8);
m=2;
while (Zinf-Z(m))>=10^(-2)
    m=m+1;
    Z(m)=Z(m-1)+0.1*((-0.2/70)*(Z(m-1))^2+9.8);
endwhile
disp 'La velocidad lmite es'
Z(m)
disp 'El tiempo que se tarda es'
0.1*m