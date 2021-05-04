% RMN-9.003.pdf

close all
clear all

t1 = 0;
t2 = pi/sqrt(2); 
del = 10^(-6);

n = fix(t2/del) + 1

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 


landa = zeros(4,n);
landa(4,:) = 100*ones(1,n);


for k=1:100
   ['kkkkkkkkkkkkkkkkkkkk']
   k
   xx = zeros(4,n);

    x1 = [1;0;0;0];
    xx(:,1) = x1;
    
    for j=2:n
        u = -.5 * (landa(:,j))' * (A * x1);
        U = [[ 0,-u,-1, 0];
             [ u, 0, 0, 1];
             [ 1, 0, 0,-u];
             [ 0,-1, u, 0]];
       x2 = x1 + .5 * del * (U * x1);
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
    
    uu = zeros(n,1);

    for j=1:n
        uu(j) = -.5*(landa(:, j))' * (A * xx(:,j));
    end
    
    f2 = figure(2)
    plot(del*(1:n), uu)
%    axis([0,3,-1,1])
    title(['solucion de u para k=1'])
    
    nom2 = ['uu', num2str(k), '.jpg'];
    saveas(f2, nom2)
    
    s1 = del * sum(uu(1:(n-1)).^2)
    s2 = del * sum(uu(2:n).^2)
    
    fi = fopen('salida.txt', 'w')
    fprintf(fi, '%f, %f, %f, %f', k, s1, s2, (s1+s2)/2)
    fprintf(fi, '\n')
    ['area: ', num2str(s1)]
    
    landa = zeros(4,n);
    l2 = [0,0,0,xx(4,n)]'
    landa(:,n) = l2;
    
    for j=n:-1:2
        v = -.5 * (l2' * (A * xx(:,j)));
        
        V = [[0,-v,-1, 0];
             [v, 0, 0, 1];
             [1, 0, 0,-v];
             [0,-1, v, 0]];
         
         l1 = l2 - .5*del*(V *l2);
         landa(:, j-1) = l1;
         l2 = l1;
    end
end

fclose(fi)