f = @(t,y) (y-5)*(cos(t)^2-0.5);
for k = 1:11
  hold on
  plot(euler(f,0,10,0.01,k-1));
  end