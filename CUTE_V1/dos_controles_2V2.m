% RMN-9.003.pdvf

close all
clear all

t1 = 0;
%t2 = pi/sqrt(2); 
t2 = pi-0.15;
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


for k=1:17
    resx = Cal_xx_2V2(k, n, del, v, w, landa, kapa);
    resl = Cal_landa_2V2(n, del, resx.uy, resx.x);
    resk = Cal_kapa_2V2(n, del, resx.ux, resx.x);
    v = resl.v;
    landa = resl.landa;
    w = resk.w;
    kapa = resk.kapa;
end

xx = resx.x;

for i=1:n
    vv = xx(:,i);
    [a, b, c] = Transforma4Dto3D(vv(1), vv(2), vv(3), vv(4));
    x1(i) = a;
    x2(i) = b;
    x3(i) = c;
end


figure(5)

[x,y,z] = sphere;

hold on
surf(x, y, z, 'FaceColor','w',...
   'FaceAlpha', .3, ...
   'EdgeColor','none',...
   'FaceLighting','phong')  % sphere centered at (0,1,-3)
daspect([1 1 1])
axis tight
view(-50,30)
camlight left

plot3(x1, x2, x3,'Color','blue', 'LineWidth',1.3)
%plot3(-x1, x2, -x3,'Color','blue', 'LineWidth',1)

axis([-1.5, 1.5, -1.5, 1.5, -1.5, 1.5])

