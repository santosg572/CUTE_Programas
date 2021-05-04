function res = CalLan_xy(del, n, ni1, ni2, xx,ux, uy)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
landa = zeros(4,n);

l2 = [0,0,0,xx(4,n)]'

landa(:,n) = l2;
    
for j=n:-1:2
    v = (1-ni1) * uy(j) + ni1 * (l2' * (A * xx(:,j)));
    w = (1-ni2) * ux(j) + ni2 * (l2' * (A * xx(:,j)));
        
    V = [[0,-v,-1, -w];
         [v, 0,-w, 1];
         [1, w, 0,-v];
         [w,-1, v, 0]];
    
    l1 = l2 - del*(V *l2);
    landa(:, j-1) = l1;
    l2 = l1;
end

vv = zeros(n,1);
ww = zeros(n,1);

for j = 1:n
    vv(j) = (1-ni1) * uy(j) + ni1 * (l2' * (A * xx(:,j)));
    ww(j) = (1-ni2) * ux(j) + ni2 * (l2' * (A * xx(:,j)));
end

res.landa = landa;
res.v = vv;
res.w = ww;



