%Esta función toma como input una lista y devuelve su máximo y el índice de su primera ocurrencia
function [max,k]=maximo(x)
	max = x(1);
	k = 1;
	for i = 1:length(x)
		if x(i) > max
			max = x(i);
			k = i;
		end
	end
k