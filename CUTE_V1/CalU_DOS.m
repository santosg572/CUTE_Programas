function xx = CalU_DOS(k, n, del, landa, kapa)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
B = [[0, 0, 0,-1];
     [0, 0,-1, 0];
     [0, 1, 0, 0];
     [1, 0, 0, 0]];
 
 
xx = zeros(4,n);
x1 = [1;0;0;0];
xx(:,1) = x1;
    
for j=2:n
    uy = -1 * (landa(:,j))' * (A * x1);
    ux = -1 * (kapa(:,j))' * (B * x1);
    U = [[ 0,-uy, -1,-ux];
         [uy,  0,-ux,  1];
         [ 1, ux,  0,-uy];
         [ux, -1, uy,  0]];
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
    
uy = zeros(n,1);
ux = zeros(n,1);

for j=1:n
    uy(j) = -1*(landa(:, j))' * (A * xx(:,j));
    ux(j) = -1*(kapa(:, j))' * (B * xx(:,j));
end
    
f2 = figure(2)
subplot(2,2,1)
plot(del*(1:n), ux, 'LineWidth',2)
title(['u_x'])

subplot(2,2,2)
plot(del*(1:n), uy, 'LineWidth',2)

%    axis([0,3,-1,1])
title(['u_y'])
xlabel(['Optimal control for k= ', num2str(k)])


nom2 = ['uu', num2str(k), '.jpg'];
saveas(f2, nom2)
    
s1 = del * (sum(ux(1:(n-1)).^2) + sum(uy(1:(n-1)).^2))
s2 = del * (sum(ux(2:n).^2) + sum(uy(2:n).^2))
    
fi = fopen('salida.txt', 'a')
fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
fprintf(fi, '\n')
['area: ', num2str(s1)]
fclose(fi)

