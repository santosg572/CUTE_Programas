clear all
n = 1000
dt = 5/1000
Winc = zeros ( n + 1,1);
rng(100, 'twister');

Winc = sqrt ( dt ) * randn ( n, 1);
wc = cumsum(Winc);
wc;
%plot(wc)
length(wc)

x = zeros(n, 1);
y = zeros(n, 1);

x(1) = 0
y(1) = 1
for i=2:n
    x(i) = x(i-1) + dt;
    y(i) = y(i-1) + dt * ( 3*y(i-1)-2 + exp(3*x(i-1))) % * wc(i-1);
end
plot(x, y)

