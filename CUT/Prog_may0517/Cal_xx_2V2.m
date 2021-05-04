function res = Cal_xx_2V2(k, n, del, v, w, landa, kapa)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
delta1 = .5;
delta2 = .5;

uy = zeros(n,1);
ux = zeros(n,1);

xx = zeros(4,n);
x1 = [1;0;0;0];
xx(:,1) = x1;
    
for j=1:(n-1)
    y = (1-delta1) * v(j) + delta1 * (landa(:,j))' * (A * x1);
    x = (1-delta2) * w(j) + delta2 * (kapa(:,j))' * (A * x1);
        
    U = [[ 0,-y, -1,-x];
        [ y, 0, -x, 1];
        [ 1, x, 0, -y];
        [ x,-1, y,  0]];
         
    x2 = x1 + del * (U * x1);
    xx(:, j+1) = x2;
    x1 = x2;
end

for j=1:n
    uy(j) = (1-delta1) * v(j) + delta1 * (landa(:,j))' * (A * xx(:,j));
    ux(j) = (1-delta2) * w(j) + delta2 * (kapa(:,j))' * (A * xx(:,j));
end

tt = del*(1:n);
    
f1 = figure(1);
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
    
title(['solucion de x para k= ', int2str(k)] )
    
%nom1 = ['xx', num2str(k),'.jpg'];
%saveas(f1, nom1)
    
f2 = figure(2)
subplot(2,2,1)
plot(del*(1:n), ux, 'LineWidth',2)
%axis([0,3,-1,1])
title('u_x')

subplot(2,2,2)
plot(del*(1:n), uy, 'LineWidth',2)
%axis([0,3,-1,1])
title('u_y')
    
xlabel(['soluciones de ux, uy para k=', num2str(k)] )
nom2 = ['uu', num2str(k), '.jpg'];
saveas(f2, nom2)
    
s1 = del * sum(ux(1:(n-1)).^2 + uy(1:(n-1)).^2)
s2 = del * sum(ux(2:n).^2 + uy(2:n).^2)
    
fi = fopen('salida.txt', 'a')
fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')
['area: ', num2str(s1)]
    
res.ux = ux;
res.uy = uy;
res.x = xx;
    
    