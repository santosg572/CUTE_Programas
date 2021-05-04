t = 0:.1:pi/2;
fi = sin(t);
np = length(fi);
te = linspace(0,pi/2,np);

x = sin(te) .* cos(fi);
y = sin(te) .* sin(fi);
z = cos(te)

plot3(x, y, z)

