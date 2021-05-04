% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-4);

n = fix(t2/del) + 1

landa = zeros(4,n);

t = del*(1:n);
landa(1,:) = 10*ones(1,n);
landa(2,:) = 10*ones(1,n);
landa(3,:) = 10*ones(1,n);
landa(4,:) = 10*ones(1,n);

for k=1:100
    xx = CalU(k, n, del, landa);
    landa = CalLan(del, n, xx);
end
