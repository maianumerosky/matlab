function y = factorial(x)
	if x<0 && floor(x)!=x
		disp('Ingresa un numero entero no negativo')
	elseif x<0
		disp('Ingresa un numero no negativo')
	elseif floor(x) != x
		disp('Ingresa un numero entero')
	else
		y = 1;
		for i = 1 : x
			y = y * i;
		end
	end