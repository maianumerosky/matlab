function x=jacobi(A,b)

if not(size(A,1)==size(A,2))
    disp 'La matriz no es cuadrada'
    A = input('Inserte una nueva A: \n'); 
elseif not(length(b)==size(A,1))
    disp 'Los tamaños de A y b no coinciden'
    b = input ('Inserte una nueva b: \n');
end

n=size(A,1);

if not(sum(diag(A)==0)==0)
    % x==0 pone 1 donde la coordenada de x es igual a cero y cero donde la
    % coordenada de x no es cero
    disp 'A tiene algún cero en la diagonal'
     A = input('Inserte una nueva A: \n');
end
    
x=rand(n,1);
M=diag(diag(A));
N=A-M;
B=(-diag(1./diag(A)))*N;
norm(B)
C=diag(1./diag(A))*b';
for k=1:100
    x=B*x+C;
end