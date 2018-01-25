function U = resorte(m,k,h,tf)

T = [0:h:tf];
n = length(T);
a = -k/m;

A = diag(-2/h^2-a * ones(n,1)) + diag(1/h^2 * ones(n-1,1),1) + diag(1/h^2 * ones(n-1,1),-1);
b = [zeros(n-1,1); -1/h^2];

U = A\b;

plot(T,U);