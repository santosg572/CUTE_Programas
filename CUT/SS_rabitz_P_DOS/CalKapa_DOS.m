function kapa = CalKapa_DOS(del, n, xx)

A = [[0, 0, 0, -1];
     [0, 0,-1, 0];
     [0, 1, 0, 0];
     [1, 0, 0, 0]];
 
kapa = zeros(4,n);

l2 = [0,0,0,xx(4,n)]'

kapa(:,n) = l2;
    
for j=n:-1:2
    w = -1 * (l2' * (A * xx(:,j)));
        
    W = [[0, 0,-1,-w];
         [0, 0,-w, 1];
         [1, w, 0, 0];
         [w,-1, 0, 0]];
    
    l1 = l2 - del*(W *l2);
    kapa(:, j-1) = l1;
    l2 = l1;
end

