% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-4);

n = fix(t2/del) + 1

landa(1,:) = 10*ones(1,n);
landa(2,:) = 10*ones(1,n);
landa(3,:) = 10*ones(1,n);
landa(4,:) = 10*ones(1,n);

for k=1:18
    res = CalUK(k, n, del , landa);
    landa = CalLanK(del, n, res.xf, res.uu);
end


[nn, np] = size(res)

x1 = zeros(np,1);
x2 = zeros(np,1);
x3 = zeros(np,1);

for i=1:np
    vv = res(:,i);
    [a, b, c] = Transforma4Dto3D(vv(1), vv(2), vv(3), vv(4));
    x1(i) = a;
    x2(i) = b;
    x3(i) = c;
end


figure(5)

[x,y,z] = sphere;

hold on
surf(x, y, z, 'FaceColor','interp',...
   'EdgeColor','none',...
   'FaceLighting','phong')  % sphere centered at (0,1,-3)
daspect([1 1 1])
axis tight
view(-50,30)
camlight left

plot3(x1, x2, x3,'Color','green', 'LineWidth',3)

axis([-1.5, 1.5, -1.5, 1.5, -1.5, 1.5])

