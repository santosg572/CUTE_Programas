clear all
close all

t0 = 0
x0 = 1
y0 = 0

del = 10^-3
 
n = 10^5

x = zeros(n,2);
x(1,1) = x0;
x(1,2) = 0;
y = zeros(n,2);
y(1,1) = 0;
y(1,2) = 0;

for (j = 2:n)
    j
    x1 = x0 + del * ((-i -.5*cos(t0)) * y0 + .33 * t0 * y0*y0)
    y1 = y0 + del * ((-i +.5*cos(t0)) * x0 - .33 * t0 * x0*y0)
    if (isnan(x1) == 1)
        break;
    end
    x(j,1) = real(x1);
    x(j,2) = imag(x1);
    y(j,1) = real(y1);
    y(j,2) = imag(y1);
    t0 = t0+del
    x0 = x1
    y0 = y1
end

plot(x(:,2))

    
    
    