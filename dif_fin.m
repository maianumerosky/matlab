%funcion que sirve para hacer diferencias finitas. Ingresar ec. de la pinta
%ut=A*uxx+B*ux. J es la cantidad de puntos en x. x0 y xf las las posiciones
%inicial y final, k la separaci�n entre t0 y tf. N la cantidad de
%iteraciones. Tal como esta ahora u es 0 a x0 y xf para todo t.
%u_0 ES UNA FUNCI�N INICIAL A UN TIEMPO to (O SEA u(x,0)= u_0(x)) y debe
%cumplir que sea 0 en los extremos de x.

function y=dif_fin(A,B,J,N)
 
% x0=0;
% xf=1;
h=1/J; %defino separaci�n espacial
% k=0.0012;
% N=50;
k=1/N;
x=0:h:1; %defino vector espacial
r=k/h^2

a=A*r+B*(r/2); %diagonal superior
b=1-2*A*r; %diagonal ppal
c=A*r-B*(r/2);%diagonal inferior

d1=a*ones(J-2,1); %diagonales
d=b*ones(J-1,1); 
dinf=c*ones(J-2,1);

A=diag(d)+diag(d1,1)+diag(dinf,-1);
U_0=u_0(x(2:J))';%uso la funci�n inicial que haya definido
D=[]; 
D=[D U_0]; %lleno el vector vacio con la funcion inicial definida arriba
tic
%con el for, aplico la matriz de iteraci�n A N-1 veces (cosa de tener N
%pasos en total) a U_0 y voy llenando D. cuando n=j-1 me queda D=[D U_0 A*U_0...(A^j)*U_0...0]
for n=0:N-1

	U=A*U_0;
    U_0=U;
    pause(.5)%la pausa me permite llegar a ver los graficos
    plot(x(2:J),U_0,'c'); %el plot esta adentro del for asi que grafico para cada t
    axis([0,1,0,2.5]); %ventana del gr�fico fija
    D=[D U_0];
end
toc %el tic toc me dice cuanto dura el for
surf(D)
