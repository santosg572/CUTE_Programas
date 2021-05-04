% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-4);

n = fix(t2/del) + 1

landa = zeros(4,n);

t = del*(1:n);
v = cos(t);
w = ones(1,n);
landa(1,:) = 10*ones(1,n);
landa(2,:) = 10*ones(1,n);
landa(3,:) = 10*ones(1,n);
landa(4,:) = 10*ones(1,n);

delta1 = .5
delta2 = 1.5
ni1 = 1.5
ni2 = .5

for k=1:100
    res = Cal_uxuy(k, n, del,delta1, delta2, v, w, landa);

    res2 = CalLan_xy(del, n, ni1, ni2, res.xx, res.ux, res.uy);
    landa = res2.landa;
    v = res2.v;
    w = res2.w;
end
