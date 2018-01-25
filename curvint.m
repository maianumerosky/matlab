function [t,y] = curvint(f,t0,tf,h);
  t = [t0:h:tf];
  n = length(t);
  y = zeros(1,n);
  for j = 1 : 11
    y(1) = j-1;
    for i = 1 : n-1
      y(i + 1) = y(i) + h * f(t(i),y(i));
    end
    plot(t,y);
    hold on
  end