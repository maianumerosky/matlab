function x=GaussSeidel(A,b,k)
n=size(A,1);
x=zeros(1,n);
for l=1:k
    for i=1:n
        x(i)=b(i);
        for j=1:n
            if not(j==i)
                x(i)=x(i)-A(i,j)*x(j);
            end
        end
        x(i)=x(i)/(A(i,i));
    end
end
