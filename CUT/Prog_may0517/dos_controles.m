% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-6);

n = fix(t2/del) + 1

xx = zeros(4,n);

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
delta1 = .5
ni1 = 1.5
delta2 = .5
ni2= 1.5
 
t = 0;
x1 = [1;0;0;0];
xx(:,1) = x1;

k = 1;

for j=2:n
    uy = (1-delta1) * cos(t) + delta1 * ([t,0,0,0] * (A * x1));
    ux = (1-delta2) * 1 + delta2 * ([t,0,0,0] * (A * x1));
    U = [[ 0 ,-uy, -1,-ux];
         [ uy, 0, -ux,  1];
         [ 1, ux, 0,  -uy];
         [ ux,-1, uy,  0]];
    x2 = x1 + .5 * del * (U * x1);
    xx(:, j) = x2;
    x1 = x2;
    t= t+del;
end

tt = del*(1:n);

f1 = figure(1)

subplot(2,2,1)
plot(tt, xx(1,:))
%axis([0, 3,-1,1])

subplot(2,2,2)
plot(tt, xx(2,:))
%axis([0,3,-1,1])

subplot(2,2,3)
plot(tt, xx(3,:))
%axis([0,3,-1,1])

subplot(2,2,4)
plot(tt, xx(4,:))
%axis([0,3,-1,1])

title(['solucion de x para k=1'] )

%nom1 = ['xx', num2str(k),'.jpg'];
%saveas(f1, nom1)

Uy = zeros(n,1);
Ux = zeros(n,1);
t=0;

for j=1:n
    Uy(j) = (1-delta1) * cos(t) + delta1 * ([t,0,0,0] * (A * xx(:,j)));
    Ux(j) = (1-delta2) * 1 + delta2 * ([t,0,0,0] * (A * xx(:,j)));
    t = t+del;
end

f2 = figure(2)
subplot(2,2,1)
plot(del*(1:n), Uy)
axis([0,3,-1,1])

subplot(2,2,2)
plot(del*(1:n), Ux)
axis([0,3,-1,1])
title(['solucion de u para k=1'] )

nom2 = ['uu', num2str(k), '.jpg'];
saveas(f2, nom2)

s1 = del * sum(Uy(1:(n-1)).^2)
s2 = del * sum(Ux(2:n).^2)
k = 1;
fi = fopen('salida.txt', 'w')

fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')
['area: ', num2str(s1)]

%==============================================

for k=2:100

lan = zeros(4,n);
l2 = [0,0,0,xx(4,n)]'
lan(:,n) = l2;

for j=n:-1:2
    v = (1-ni1) * Uy(j) + .5 * ni1* ([t,0,0,0] * (A * xx(:,j)));
    w = (1-ni2) * Ux(j) + .5 * ni2* ([t,0,0,0] * (A * xx(:,j)));
    V = [[0,-v,-1, -w];
         [v, 0,-w,  1];
         [1, w, 0, -v];
         [w,-1, v, 0]];
    l1 = l2 - .5*del*(V *l2);
    lan(:, j-1) = l1;
    l2 = l1;
end

V = zeros(n,1);
W = zeros(n,1);

for j=1:n
    V(j) = (1-ni1) * Uy(j) + ni1* ([t,0,0,0] * (A *  xx(:,j)));
    W(j) = (1-ni2) * Ux(j) + ni2* ([t,0,0,0] * (A *  xx(:,j)));
end

%f3 = figure(3)
%plot(vv)
%title(['solucion de v para k= ',num2str(k)]) 
%nom3 = ['vv', num2str(k), '.jpg']
%saveas(f3, nom3)

%==========================================

xx = zeros(4,n);

x1 = [1;0;0;0];
xx(:,1) = x1;

for j=1:(n-1)
    uy = (1-delta1) * V(j) + delta1 * ([t,0,0,0] * (A * x1));
    ux = (1-delta2) * W(j) + delta2 * ([t,0,0,0] * (A * x1));
        U = [[ 0 ,-uy, -1,-ux];
         [ uy, 0, -ux,  1];
         [ 1, ux, 0,  -uy];
         [ ux,-1, uy,  0]];
    x2 = x1 + .5 * del * (U * x1);
    xx(:, j+1) = x2;
    x1 = x2;
end

%tt = del*(1:n);

%f4 = figure(4)

%subplot(2,2,1)
%plot(tt, xx(1,:))
%axis([0, 3,-1,1])
%subplot(2,2,2)
%plot(tt, xx(2,:))
%axis([0,3,-1,1])
%subplot(2,2,3)
%plot(tt, xx(3,:))
%axis([0,3,-1,1])
%subplot(2,2,4)
%plot(tt, xx(4,:))
%axis([0,3,-1,1])

%title(['solucion de x, para k= ', num2str(k)]);
%nom1 = ['xx', num2str(k),'.jpg']
%saveas(f4, nom1)

Uy = zeros(n,1);
Ux = zeros(n,1);

for j=1:n
    Uy(j) = (1-delta1) * cos(t) + delta1 * ([t,0,0,0] * (A * xx(:,j)));
    Ux(j) = (1-delta2) * 1 + delta2 * ([t,0,0,0] * (A * xx(:,j)));
end

s1 = del * sum(Uy(1:(n-1)).^2);
s2 = del * sum(Ux(2:n).^2);

fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')
[num2str(k), ': area : ', num2str(s1)]

f5 = figure(5)

subplot(2,2,1)
plot(del*(1:n), Uy)
axis([0,3,-1,1])

subplot(2,2,2)
plot(del*(1:n), Ux)
axis([0,3,-1,1])

title(['solucion de u para k= ', num2str(k)]);
nom2 = ['uu', num2str(k), '.jpg'] 
saveas(f5, nom2)

end

fclose(fi)