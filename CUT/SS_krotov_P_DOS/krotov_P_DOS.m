% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-4);

n = fix(t2/del) + 1

landa = zeros(4,n);

t = del*(1:n);
landa(1,:) = t;
%landa(2,:) = 10*ones(1,n);
%landa(3,:) = 10*ones(1,n);
%landa(4,:) = 10*ones(1,n);

kapa = zeros(4,n);

%kapa(1,:) = ones(1,n);
kapa(2,:) = t;
%kapa(3,:) = ones(1,n);
%kapa(4,:) = ones(1,n);

for k=1:100
    res = Cal_krotov_DOS(del, k, n, landa, kapa);
    landa = Cal_landa_krotov_DOS(del, n, res.ll, res.uy);
    kapa = Cal_kapa_krotov_DOS(del, n, res.ll, res.ux);
end
