function landa = CalLan_ES(n,xx, sigma)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];

t2 = pi/sqrt(2);
del = t2/n

landa = zeros(4,n+1);

l2 = [0,0,0,xx(4,n+1)]'

landa(:,n+1) = l2;
    
for j= n:-1:1
    v = -1 * (l2' * (A * xx(:,j+1)));
    si = sigma(j+1);    
    V = [[0,-v,-si, 0];
         [v, 0, 0, si];
         [si, 0, 0,-v];
         [0,-si, v, 0]];
    
    l1 = l2 - del*(V *l2);
    landa(:, j) = l1;
    l2 = l1;
end

