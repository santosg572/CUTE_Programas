% RMN-9.003.pdvf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-4);

n = fix(t2/del) + 1

t = del*(1:n);
v = cos(t);
w = sin(t);

landa = zeros(4,n);
landa(1,:) = t;
%landa(1,:) = ones(n,1);
%landa(2,:) = ones(n,1);
%landa(3,:) = ones(n,1);
%landa(4,:) = ones(n,1);

kapa = zeros(4,n);
kapa(2,:) = t;
%kapa(1,:) = 10*ones(n,1);
%kapa(2,:) = 10*ones(n,1);
%kapa(3,:) = 10*ones(n,1);
%kapa(4,:) = 10*ones(n,1);


for k=1:5
    resx = Cal_xx_2V2(k, n, del, v, w, landa, kapa);
    resl = Cal_landa_2V2(n, del, resx.uy, resx.x);
    resk = Cal_kapa_2V2(n, del, resx.ux, resx.x);
    v = resl.v;
    landa = resl.landa;
    w = resk.w;
    kapa = resk.kapa;
end

