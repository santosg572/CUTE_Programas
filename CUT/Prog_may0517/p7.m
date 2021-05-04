close all
clear all

t1 = 0;
t2 = pi/sqrt(2) 

del = 10^(-6);

n = fix((t2-t1)/del)

xx = zeros(4,n);

delta = 0.5
ni = 1.5

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
t = 0;
x1 = [1;0;0;0];
xx(:,1) = x1;

k = 1;

for j=2:n
    u = (1-delta)*cos(t) + delta * [t,0,0,0] * (A * x1);
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
axis([0, 3,-1,1])
subplot(2,2,2)
plot(tt, xx(2,:))
axis([0,3,-1,1])
subplot(2,2,3)
plot(tt, xx(3,:))
axis([0,3,-1,1])
subplot(2,2,4)
plot(tt, xx(4,:))
axis([0,3,-1,1])

title(['solucion de x para k=1'] )

nom1 = ['xx', num2str(k),'.jpg'];
saveas(f1, nom1)

uu = zeros(n,1);
t=0;

for j=1:n
    uu(j) = (1-delta)*cos(t) + delta*[t, 0, 0,0] * (A * xx(:,j));
    t = t+del;
end

f2 = figure(2)

plot(uu)
title(['solucion de u para k=1'] )

nom2 = ['uu', num2str(k), '.jpg'];
saveas(f2, nom2)

s1 = del * sum(uu(1:(n-1)).^2)
s2 = del * sum(uu(2:n).^2)
k = 1;
fi = fopen('salida.txt', 'w')

fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')


%==============================================

for k=2:100

lan = zeros(4,n);
l2 = [0; 1; 0; 0];
lan(:,n) = l2;

for j=n:-1:2
   v = (1-ni) * uu(j) + ni * l2' * (A * xx(:,j));
   V = [[0,-v,-1, 0];
        [v, 0, 0, 1];
        [1, 0, 0,-v];
        [0,-1, v, 0]];
    l1 = l2 - del*(V *l2);
    lan(:, j-1) = l1;
end

vv = zeros(n,1);

for j=1:n
    vv(j) = (1-ni) * uu(j) + ni * (lan(:,j))' * (A * xx(:,j));
end

f3 = figure(3)
plot(vv)
title(['solucion de v para k= ',num2str(k)]) 
nom3 = ['vv', num2str(k), '.jpg']
saveas(f3, nom3)

%==========================================

xx = zeros(4,n);

x1 = [1;0;0;0];
xx(:,1) = x1;

for j=1:(n-1)
    u = (1-delta)*vv(j) + delta * (lan(:,j))' * (A * x1);
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
axis([0, 3,-1,1])
subplot(2,2,2)
plot(tt, xx(2,:))
axis([0,3,-1,1])
subplot(2,2,3)
plot(tt, xx(3,:))
axis([0,3,-1,1])
subplot(2,2,4)
plot(tt, xx(4,:))
axis([0,3,-1,1])

title(['solucion de x, para k= ', num2str(k)]);
nom1 = ['xx', num2str(k),'.jpg']
saveas(f4, nom1)

uu = zeros(n,1);

for j=1:n
    uu(j) = (1-delta)*vv(j) + delta *(lan(:,j))' * (A * xx(:,j));
end

s1 = del * sum(uu(1:(n-1)).^2)
s2 = del * sum(uu(2:n).^2)

fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')

f5 = figure(5)

plot(uu)
%axis([0,3,-1,3])


title(['solucion de u para k= ', num2str(k)]);
nom2 = ['uu', num2str(k), '.jpg'] 
saveas(f5, nom2)

end

fclose(fi)