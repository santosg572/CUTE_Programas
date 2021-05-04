clear all
close all

randn('state',100) % set the state of randn
T = 150; N = 15000; dt = T/N;
dW1 = sqrt(dt)*randn(N,1); % increments
dW2 = sqrt(dt)*randn(N,1); % increments
t = dt:dt:T;

p = zeros(N,1);
x = zeros(N,1);
p(1) = 2;
x(1) = 2;

for i=2:N
    x(i) = x(i-1) + .5*p(i-1)*dt + dW1(i-1);
    p(i) = p(i-1) - dt + p(i-1) * dW1(i-1);
end

subplot(2,1,1)
plot(t, x)
subplot(2,1,2)
plot(t,p)

