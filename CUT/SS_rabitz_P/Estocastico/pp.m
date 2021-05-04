close all
clear all

% resolvieno la ecuacion diferencial
% y' = cos(te), con y(0) = 1
% despues integrar la solucion

t1 = 0;
t2 = pi / 2;

n = 1000;

del = (t2 - t1) / n

xx = del*(0:n);
ff = cos(xx);

yy = zeros(n+1,1);

yy(1) = 1
for i=2:(n+1)
    yy(i) = yy(i-1) + del * ff(i-1);
end
hold on
plot(xx,yy)
w = 0:.01:pi/2;
plot(w, 1+sin(w), 'r')

'solucion aproximada'
area = del * sum(yy(1:n))
    
'solucion aproximada'

pi/2+sin(pi/2)



