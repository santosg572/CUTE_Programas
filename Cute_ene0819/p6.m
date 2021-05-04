
[x,y,z] = sphere;

np=100;
te = linspace(0, pi, np);
fi = linspace(0, 2*pi, np);

xx = sin(te).*cos(fi);
yy = sin(te).*sin(fi);
zz = cos(te)

figure(3)
hold on

surf(x,y,z, 'FaceAlpha',0.5, 'EdgeColor', 'none')

plot3(xx, yy, zz, 'LineWidth',2)

