% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-6);

n = fix(t2/del) + 1

xx = zeros(4,n);

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
t = 0;
x1 = [1;0;0;0];
xx(:,1) = x1;

k = 1;

for j=2:n
    u = -.5 * ([t, 0, 0,0] * (A * x1));
    U = [[ 0,-u,-1, 0];
         [ u, 0, 0, 1];
         [ 1, 0, 0,-u];
         [ 0,-1, u, 0]];
    x2 = x1 + .5 * del * (U * x1);
    xx(:, j) = x2;
    x1 = x2;
    t= t+del;
end

t = del*(1:n);
x = xx(1,:);
y = xx(2,:);
z = xx(3,:);
w = xx(4,:);

[min(x), max(x)]
[min(y), max(y)]
[min(z), max(z)]
[min(w), max(w)]

hold on
%plot(x)
%plot(y)
%plot(z)
%plot(w)


plot3(t,x,z)

