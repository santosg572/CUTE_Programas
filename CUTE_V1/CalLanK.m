function landa = CalLanK(del, n, ll, u)

landa = zeros(4,n);

l2 = [0,0,0,ll]';

landa(:,n) = l2;
    
for j=n:-1:2
    v = u(j);
    V = [[0,-v,-1, 0];
         [v, 0, 0, 1];
         [1, 0, 0,-v];
         [0,-1, v, 0]];
    
    l1 = l2 - del*(V *l2);
    landa(:, j-1) = l1;
    l2 = l1;
end

