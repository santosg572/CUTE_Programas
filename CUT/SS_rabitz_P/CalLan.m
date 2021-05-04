function landa = CalLan(del, n, xx)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
landa = zeros(4,n);

l2 = [0,0,0,xx(4,n)]'

landa(:,n) = l2;
    
for j=n:-1:2
    v = -1 * (l2' * (A * xx(:,j)));
        
    V = [[0,-v,-1, 0];
         [v, 0, 0, 1];
         [1, 0, 0,-v];
         [0,-1, v, 0]];
    
    l1 = l2 - del*(V *l2);
    landa(:, j-1) = l1;
    l2 = l1;
end

