% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-4);

n = fix(t2/del) + 1

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
delta1 = .5
ni1 = 1.5

delta2 = .5
ni2= 1.5

t = del*(1:n);
v = cos(t');
w = ones(n,1);

uy = zeros(n,1);
ux = zeros(n,1);

landa = zeros(4,n);
landa(1,:) = t;

kapa = zeros(4,n);
kapa(2,:) = t;


for k = 1:100
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
    
     
    for j=1:n
        uy(j) = (1-delta1) * v(j) + delta1 * (landa(:,j))' * (A * xx(:,j));
        ux(j) = (1-delta2) * w(j) + delta2 * (kapa(:,j))' * (A * xx(:,j));
    end
    
    f2 = figure(2)
    subplot(2,2,1)
    plot(del*(1:n), ux)
    %axis([0,3,-1,1])
    
    subplot(2,2,2)
    plot(del*(1:n), uy)
    %axis([0,3,-1,1])
    
    title(['solucion de u para k=', num2str(k)] )
    nom2 = ['uu', num2str(k), '.jpg'];
    saveas(f2, nom2)
    
    s1 = del * sum(ux(1:(n-1)).^2 + uy(1:(n-1)).^2)
    s2 = del * sum(ux(2:n).^2 + ux(2:n).^2)
    
    fi = fopen('salida.txt', 'w')
    fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
    fprintf(fi, '\n')
    ['area: ', num2str(s1)]
    
    %==============================================
    
    l2 = [0,0,0,xx(4,n)]'
    landa(:,n) = l2;
    
    for j=n:-1:2
        vv = (1-ni1) * uy(j) + ni1 * l2' * (A * xx(:,j));
        
        V = [[0 ,-vv,-1, 0];
             [vv,  0, 0, 1];
             [1 ,  0, 0,-vv];
             [0 , -1,vv, 0]];
         
        l1 = l2 - del*(V *l2);
        landa(:, j-1) = l1;
        l2 = l1;
    end
    
    k2 = [0,0,0,xx(4,n)]'
    kapa(:,n) = l2;
    
    for j=n:-1:2
        ww = (1-ni2) * ux(j) + ni2 * k2' * (A * xx(:,j));
        
        W = [[ 0, 0, -1,-ww];
             [ 0, 0,-ww,  1];
             [ 1,ww,  0,  0];
             [ww,-1,  0,  0]];
         
         k1 = k2 - del*(W *l2);
         kapa(:, j-1) = l1;
         l2 = l1;
    end
    
    for j=1:n
        v(j) = (1-ni1) * uy(j) + ni1 * (landa(:,j))' * (A * xx(:,j));
        w(j) = (1-ni2) * ux(j) + ni2 * (kapa(:,j))' * (A * xx(:,j));
    end
        
end



fclose(fi)