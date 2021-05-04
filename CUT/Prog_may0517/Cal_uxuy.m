function res = Cal_uxuy(k, n, del,delta1, delta2, v, w, landa)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 

xx = zeros(4,n);
x1 = [1;0;0;0];
xx(:,1) = x1;
    
for j=2:n
    uy = (1-delta1)*v(j-1) + delta1 * (landa(:,j-1))' * (A * x1);
    ux = (1-delta2)*w(j-1) + delta2 * (landa(:,j-1))' * (A * x1);
    
    U = [[ 0,-uy,-1, -ux];
         [ uy, 0, -ux, 1];
         [ 1, ux, 0,-uy];
         [ ux,-1, uy, 0]];
    
    x2 = x1 + del * (U * x1);
    xx(:, j) = x2;
    x1 = x2;
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
    
uux = zeros(n,1);
uuy = zeros(n,1);

for j=1:n
    uuy(j) = (1-delta1)*v(j) + delta1 * (landa(:,j))' * (A *xx(:,j));
    uux(j) = (1-delta2)*w(j) + delta2 * (landa(:,j))' * (A * xx(:,j));
end
    
f2 = figure(2)
title(['hhhh'])
subplot(2,2,1)
plot(del*(1:n), uux, 'LineWidth', 2)
xlabel(['Optimal control u_x for k= ', num2str(k)])


subplot(2,2,2)
plot(del*(1:n), uuy, 'LineWidth', 2)
xlabel(['Optimal control u_y for k= ', num2str(k)])

%    axis([0,3,-1,1])
    
nom2 = ['uu', num2str(k), '.jpg'];
saveas(f2, nom2)
    
s1 = del * sum(uux(1:(n-1)).^2) + del * sum(uuy(1:(n-1)).^2)
s2 = del * sum(uux(2:n).^2) + del * sum(uuy(2:n).^2)
    
fi = fopen('salida.txt', 'a')
fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')
['area: ', num2str(s1)]
fclose(fi)

res.xx = xx;
res.ux = uux;
res.uy = uuy;


