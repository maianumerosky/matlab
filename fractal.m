function fractal(n)

M = 800;
x=linspace(-2.1,0.9,M);
y=linspace(-1.5,1.5,M);
[X,Y]=meshgrid(x,y);
c=X+Y*i;
Z=zeros(M);
for k=1:n
  Z=Z.^2+c;
  w=exp(abs(Z));
  %pcolor(w);
  min(min(w));
  max(max(w));
  %pause
 end
 
 A = w.*(w<Inf)+(w==Inf);
 imshow(A)
 
 %imshow()
%x=linspace(­2.1,0.9,50); %rango de valores para x 
%y=linspace(­1.5,1.5,50); %rango de valores para y 
%[X,Y]=meshgrid(x,y);    % se genera un mallado para x,y 
%c=X+Y*i;    %los valores de x,y forman un numero complejo 
%Z=zeros(50);   %se forma un vector de ceros para la variable z 
%for k=1:n 
%    Z=Z.^2+c; 
%    w=exp(­abs(Z)); 
%    pcolor(w);  %se imprime en pantalla el valor de w que nos da la forma del fractal 
%    pause  
%end