% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/(2*sqrt(2)); 
del = 10^(-6);
n = fix(t2/del) + 1

xx = zeros(4,n);

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
t = t1;
x1 = [1;0;0;0];
xx(:,1) = x1;

k = 1;

for j=2:n
    u = 1;
    U = [[ 0,-u,-1, 0];
         [ u, 0, 0, 1];
         [ 1, 0, 0,-u];
         [ 0,-1, u, 0]];
    x2 = x1 + del * (U * x1);
    xx(:, j) = x2;
    x1 = x2;
    t= t+del;
end

tt = del*(1:n);

f1 = figure(1)

subplot(2,2,1)
plot(tt, xx(1,:))

subplot(2,2,2)
plot(tt, xx(2,:))

subplot(2,2,3)
plot(tt, xx(3,:))

subplot(2,2,4)
plot(tt, xx(4,:))

title(['solucion de x para k=1'] )

%nom1 = ['xx', num2str(k),'.jpg'];
%saveas(f1, nom1)

lan = zeros(4,n);
l2 = [0,0, xx(3,n), 0]'
lan(:,n) = l2;
t=t2;
for j=n:-1:2
   u = 1;
   V = [[0,-u,-1, 0];
        [u, 0, 0, 1];
        [1, 0, 0,-u];
        [0,-1, u, 0]];
    l1 = l2 - del*(V *l2);
    lan(:, j-1) = l1;
    l2 = l1;
    t = t - del;
end

tt = del*(1:n);

f2 = figure(2)

subplot(2,2,1)
plot(tt, lan(1,:))

subplot(2,2,2)
plot(tt, lan(2,:))

subplot(2,2,3)
plot(tt, lan(3,:))

subplot(2,2,4)
plot(tt, lan(4,:))

title(['solucion de lan para k=1'] )

%nom1 = ['xx', num2str(k),'.jpg'];

uu = zeros(n,1);
t=0;

for j=1:n
    uu(j) = (lan(:,j))'* (A * xx(:,j));
end

f3 = figure(3)

plot(del*(1:n), uu)
title(['solucion de u para k=1'] )

nom2 = ['uu', num2str(k), '.jpg'];
saveas(f3, nom2)

s1 = del * sum(uu(1:(n-1)).^2)
s2 = del * sum(uu(2:n).^2)
k = 1;
fi = fopen('salida.txt', 'w')

fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')
['area: ', num2str(s1)]

%==============================================

for k=2:100
    
    xx = zeros(4,n);
    x1 = [1;0;0;0];
    xx(:,1) = x1;
    
    for j=1:(n-1)
        u = uu(j);
        U = [[ 0,-u, -1, 0];
             [ u, 0, 0, 1];
             [ 1, 0, 0,-u];
             [ 0,-1, u, 0]];
         x2 = x1 + del * (U * x1);
         xx(:, j+1) = x2;
         x1 = x2;
    end
    
    tt = del*(1:n);
    f4 = figure(4)
    
    subplot(2,2,1)
    plot(tt, xx(1,:))
    
    subplot(2,2,2)
    plot(tt, xx(2,:))
%    axis([0,3,-1,1])
 
    subplot(2,2,3)
    plot(tt, xx(3,:))
    %axis([0,3,-1,1])
    subplot(2,2,4)
    plot(tt, xx(4,:))
    
    %axis([0,3,-1,1])
    
    title(['solucion de x, para k= ', num2str(k)]);
    %nom1 = ['xx', num2str(k),'.jpg']
    
    %saveas(f4, nom1)
    
    lan = zeros(4,n);
    l2 = [0,0, xx(3,n), 0]';
    lan(:,n) = l2; 
    
    for j=n:-1:2
        v = uu(j);
        V = [[0,-v,-1, 0];
             [v, 0, 0, 1];
             [1, 0, 0,-v];
             [0,-1, v, 0]];
         l1 = l2 - del*(V *l2);
         lan(:, j-1) = l1;
         l2 = l1;
    end
    
    tt = del*(1:n);
    f5 = figure(5)
    
    subplot(2,2,1)
    plot(tt, lan(1,:))
    
    subplot(2,2,2)
    plot(tt, lan(2,:))
%    axis([0,3,-1,1])
 
    subplot(2,2,3)
    plot(tt, lan(3,:))
    %axis([0,3,-1,1])
    subplot(2,2,4)
    plot(tt, lan(4,:))
    
    %axis([0,3,-1,1])
    
    title(['solucion de lan, para k= ', num2str(k)]);
    %nom1 = ['lan', num2str(k),'.jpg']
    
    %saveas(f5, nom1)
    
    %==========================================
    
    
    uu = zeros(n,1);
    for j=1:n
        lv = lan(:,j);
        xv = xx(:,j);
        uu(j) = lv' * (A * xv);
    end
    
    s1 = del * sum(uu(1:(n-1)).^2);
    s2 = del * sum(uu(2:n).^2);
    fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
    fprintf(fi, '\n')
    [num2str(k), ': area : ', num2str(s1)]
    
    f6 = figure(6)
    plot(del*(1:n), uu)
    %axis([0,3,-1,3])
    
    title(['solucion de u para k= ', num2str(k)]);
    nom2 = ['uu', num2str(k), '.jpg'] 
    saveas(f6, nom2)

end

fclose(fi)