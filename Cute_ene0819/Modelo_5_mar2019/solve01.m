clear all;
close all;

x1 = 1.0;
x2 = 5;

%delt = .00001
delt = .1
x = (x1:delt:x2)';
delt = x(2) - x(1);
np = length(x)
y = zeros(np,1);
y(1) = 2;
y1 = 2;

for (i=1:(np-1))
   y2 = y1 + delt * y1*x(i)^2 / (1 + x(i)^3);
   y(i+1) = y2;
   y1 = y2
end

hold on
plot(x,y)

yy = (4*(1+x.^3)).^(1/3);

plot(x, yy, 'ob')

