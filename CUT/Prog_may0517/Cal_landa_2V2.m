function res = Cal_landa_2V2(n, del, uy, xx)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
ni1 = 1.5;

landa = zeros(4,n);
landa(1,:) = del*(1:n);

l2 = [0,0,0,xx(4,n)]';
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
    
v = zeros(n,1);

for j=1:n
    v(j) = (1-ni1) * uy(j) + ni1 * (landa(:,j))' * (A * xx(:,j));
end

res.v = v;
res.landa = landa;
