function kapa = Cal_kapa_krotov_DOS(del, n, ll, ux)
 
kapa = zeros(4,n);

l2 = [0,0,0,ll]'

kapa(:,n) = l2;
    
for j=n:-1:2
    v = ux(j);
    V = [[0, 0,-1,-v];
         [0, 0,-v, 1];
         [1, v, 0, 0];
         [v,-1, 0, 0]];
    
    l1 = l2 - del*(V *l2);
    kapa(:, j-1) = l1;
    l2 = l1;
end

