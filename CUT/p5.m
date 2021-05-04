clear all
close all

x1 = 0;
x2 = pi/sqrt(2)

del = 10^(-6);

t = x1:del:x2;
n = length(t)

muA = zeros(n,1);
muA = sin(sqrt(2)*t);
%muA(:,1) = 1;

for  (k = 1:10)
    
x = zeros(4, n);
x0 = [1,0,0,0]';
x(:,1) = x0;

for (i=2:n)
    mu = muA(i);
    T = [[0, -mu, 0, 1],
        [mu, 0, 1, 0],
         [0, -1, 0, -mu],
         [-1, 0, mu, 0]];
     
    x1 = x0 + del * (T * x0);
    x(:,i) = x1;
    x0  = x1;
 %   mu = mu+del;
    i;
end

f1 = figure(1)
subplot(2,2,1)
plot(x(1,:))
subplot(2,2,2)
plot(x(2,:))
subplot(2,2,3)
plot(x(3,:))
subplot(2,2,4)
plot(x(4,:))

ss = num2str(k);
file1 = strcat('xx',ss, '.jpg')
saveas(f1, file1);

landa = zeros(4,n);
l1 = [0,0,0,1]';
landa(:,n) = l1;

for (i=(n-1):-1:1)
       mu = muA(i);
       T = [[0, -mu, 0, 1],
            [mu, 0, 1, 0],
            [0, -1, 0, -mu],
            [-1, 0, mu, 0]];
        l0 = l1 - del * (T * l1);
        landa(:,i) = l0;
        l1 = l0;
end

f2 = figure(2)
subplot(2,2,1)
plot(landa(1,:))
subplot(2,2,2)
plot(landa(2,:))
subplot(2,2,3)
plot(landa(3,:))
subplot(2,2,4)
plot(landa(4,:))

file2 = strcat('landa', ss, '.jpg');
saveas(f2, file2);

TT = [[0, -1, 0, 0],
      [1, 0, 0, 0]
      [0, 0, 0, -1],
      [0, 0, 1, 0]]
  
mu = zeros(n,1);

for (i = 1:n)
    a = x(:, i);
    b = landa(:, i);
    mu(i) = a'*(TT * b);
end

f3 = figure(3)
plot(mu)

file3 = strcat('uu', ss, '.jpg');
saveas(f3, file3)
muA = mu;
end















