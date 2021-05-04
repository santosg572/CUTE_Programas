% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = 1; 
del = 10^(-6);

n = fix(t2/del) + 1

xx = zeros(2,n);

t = 0;
x1 = [1;1];
xx(:,1) = x1;

k = 1;

for j=2:n
    ww = x1(1);
    yy = x1(2);
    U = [[ww*yy,   0];
         [ 0, -ww*yy]];
    x2 = x1 + del * (U * x1);
    xx(:, j) = x2;
    x1 = x2;
    t= t+del;
end

tt = del*(1:n);

f1 = figure(1)

subplot(2,2,1)
plot(tt, xx(1,:))
%axis([0, 3,-1,1])

subplot(2,2,2)
plot(tt, xx(2,:))
%axis([0,3,-1,1])