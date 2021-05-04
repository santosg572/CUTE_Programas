figure


[x,y,z] = sphere;

x0 = 0
y0 = -5
t = 0:.01:2*pi;
r = 1
xc = x0 + r*cos(t);
yc = y0 + r*sin(t);

div = xc.^2 + yc.^2 + 4;
x1 = 4*xc ./ div;
x2 = 4*yc ./ div;
x3 = 2*(xc.^2 + yc.^2) ./ div;

[xc, yc] = GenCirculo([-.5,.5], .5);
[x11, x22, x33] = Transforma2Dto3D(xc, yc)

hold on
surf(x, y, z+1, 'FaceColor','interp',...
   'EdgeColor','none',...
   'FaceLighting','phong')  % sphere centered at (0,1,-3)
daspect([1 1 1])
axis tight
view(-50,30)
camlight left

plot(xc,yc)
plot3(x1, x2, x3,'Color','red', 'LineWidth',2)
plot3(x11, x22, x33,'Color','red', 'LineWidth',2)

axis([-2, 2, -2, 2, 0, 3])
