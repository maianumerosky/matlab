function X=primo(N)

P = ceil(sqrt(abs(N))); %ceil muestra la parte entera superior y floor la inferior
A = 2;
X = 1;

if abs(N) <= 1
    X = 0;
    disp('No es primo')
else
    while A <= P
        if rem(N,A) == 0
            X = 0;
            disp('No es primo')
            break
        else
            A = A + 1;
        end
    end
end

if X == 1
    disp('Es primo')
end