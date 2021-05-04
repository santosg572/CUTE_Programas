function xx = CalU_ES(n, k,landa, sigma)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];

t2 = pi/sqrt(2);
del = t2/n;

xx = zeros(4,n+1);
x1 = [1;0;0;0];
xx(:,1) = x1;
    
for j=2:(n+1)
    u = -1 * (landa(:,j-1))' * (A * x1);
    '--------- si -----------'
    si = sigma(j-1)
    U = [[ 0,-u,-si, 0];
         [ u, 0, 0, si];
         [ si, 0, 0,-u];
         [ 0,-si, u, 0]];
    x2 = x1 + del * (U * x1);
    xx(:, j) = x2;
    x1 = x2;
end
    
tt = del*(0:n);
   
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
    
uu = zeros(n+1,1);

for j=1:(n+1)
    uu(j) = -1*(landa(:, j))' * (A * xx(:,j));
end
    
f2 = figure(2)

set(gca,'fontsize',16)
 
plot(del*(0:n), uu, 'LineWidth',2)
hold on

M=.4874;
t1 = 0;
t2 = pi/sqrt(2); 
N=10000
del = t2 /N;

t = del*(0:N);
y = 2.4966 * t - 0.9;

[S,C,D] = ellipj(y, M);
plot(t, .48 * C, '--','LineWidth',2, 'Color','red');
hold off

%    axis([0,3,-1,1])
%title(['     Optimal control for k= ', num2str(k)])
    
nom2 = ['uu', num2str(k), '.jpg'];
saveas(f2, nom2)
    
s1 = del * sum(uu(1:n).^2)
    
fi = fopen('salida.txt', 'a')
fprintf(fi, '%f, %f, %f', k, (xx(4,n))^2, s1)
fprintf(fi, '\n')
['area: ', num2str(s1)]

fclose(fi)

