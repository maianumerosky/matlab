function [L,U]=gauss(A)

if not(size(A,1)==size(A,2))
    disp ('La matriz no es cuadrada')
    return
end
n=size(A,1);
L=eye(n);
for j=1:n
    if A(j,j)==0
        disp('No se puede hacer la descomposición')
        break
    end
    for i=(j+1):n
        L(i,j)=A(i,j)/A(j,j);
        A(i,j:n)=A(i,j:n)-L(i,j)*A(j,j:n);
    end
end
U=A
end
