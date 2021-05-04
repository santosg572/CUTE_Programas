y1 = 0
y2 = 1
y3 = 1

y = [y1, y2, y3];

yn = y;
for i=1:1000
    k1 = [y2*y3, -y1*y3, -51*y2*y2];
k2 = y + k1/2;
k3 = y + k2/2;
k4 = y + k3

y = y + .01*(k1 + 2*k2 + 2*k3 + k4)/6
yn = [yn;y];
end

yn

plot(yn(:,1), '-')