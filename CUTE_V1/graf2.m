clear all
close all

load('rabitz.mat')

[nv, np] = size(rab);

for i=1:np
    vv = rab(:,i);
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

plot3(x1, x2, x3,'Color','blue', 'LineWidth',1.1)
plot3(-x1, x2, -x3,'Color','blue', 'LineWidth',1.1)

axis([-1.5, 1.5, -1.5, 1.5, -1.3, 1.3])

load('krotov.mat')

[nv, np] = size(kro);

for i=1:np
    vv = kro(:,i);
    [a, b, c] = Transforma4Dto3D(vv(1), vv(2), vv(3), vv(4));
    x1(i) = a;
    x2(i) = b;
    x3(i) = c;
end

plot3(x1, x2, x3,'--','Color','red', 'LineWidth',1.4)
plot3(-x1, x2, -x3,'--', 'Color','red', 'LineWidth',1.4)
