t1 = 0;
t2 = 1;
n = 1000;
t = linspace(t1, t2, n);
delt = t(2) - t(1);

x = zeros(n,1);
x(1) = 307.65
mu = .75
ro = .30
dew = rand(n,1);

for i=2:n
    x(i) = x(i-1) + delt * .30*x(i-1) + dew(i-1) * sqrt(delt)* .75*x(i-1);
end

x
plot(t,x)