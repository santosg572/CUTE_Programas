close all

centro = [.5, 0];
radio = .3;
t=0:.01:2*pi;

x = centro(1) + radio*cos(t);
y = centro(2) + radio*sin(t);

figure(1)
plot(x,y)

den = x.^2 + y.^2 + 4;

x1 = 4*x./den;
x2 = 4*y./den;
x3 = 2*(x.^2 + y.^2)./den;

%figure(2)
%plot3(x1, x2, x3)

teta = 0:.5:pi
fi = 0:.01:2*pi;

n = length(teta)
nf = length(fi);

r=1
figure(2)
hold on
for i=1:n
    i
    x = r*sin(teta(i))*cos(fi);
    y = r*sin(teta(i))*sin(fi);
    z = 1+r*cos(teta(i))*ones(1, nf);
    plot3(x,y,z)
end
<<<<<<< HEAD

plot3(x1, x2, x3, 'r')
=======
>>>>>>> 21becde8818ea620e754ff9f67453f3c48244a09
