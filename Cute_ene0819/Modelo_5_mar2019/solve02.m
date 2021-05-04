clear all;
close all;

x1 = 0;
x2 = 1;

%delt = .00001
delt = .00001
x = (x1:delt:x2)';
delt = x(2) - x(1);
np = length(x)
y = zeros(np,1);
y(1) = -1;
y1 = -1;

for (i=1:(np-1))
   y2 = y1 - delt * y1^2*sin(x(i));
   y(i+1) = y2;
   y1 = y2;
end

hold on
plot(x,y)


xx= x1:.01:x2;
yy = -1. ./ cos(xx);

plot(xx, yy, 'or')

