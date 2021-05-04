M=.4874;
t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-4);

n = fix(t2/del) + 1

t = del*(1:n);
y = 2.4966 * t - 0.9;

[S,C,D] = ellipj(y, M);
plot(t, .48 * C, 'LineWidth',2, 'Color','red');