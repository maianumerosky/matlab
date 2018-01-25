H = [0.1 0.0625 0.05 0.025];
f = @(t,y) y;
to = 0;
tf = 1;
Y1=ones(1,length(H));

for j = 1:length(H)
  h = H(j);
  T=[to:h:tf]';
  N=length(T);
  for i=2:N
      Y1(j)=Y1(j)+h*f(T(i-1),Y1(j));
  end
 end

logE1 = log(abs(exp(1)-Y1));
logH = log(H);

plot(logH,logE1)
hold on

Y2=ones(1,length(H));

for j = 1:length(H)
  h = H(j);
  T=[to:h:tf]';
  N=length(T);
  for i=2:N
      Y2(j)=Y2(j)*(1+h+0.5*h^2);
  end
 end
 
 logE2 = log(abs(exp(1)-Y2));
 plot(logH,logE2)
