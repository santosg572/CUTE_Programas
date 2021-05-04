function res = Cal_kapa_2V2(n, del, ux, xx)

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];
 
ni2= 1/2;

k2 = [0,0,0,xx(4,n)]';
kapa(:,n) = k2;
    
for j=n:-1:2
    ww = (1-ni2) * ux(j) + ni2 * k2' * (A * xx(:,j));
    
    W = [[ 0, 0, -1,-ww];
         [ 0, 0,-ww,  1];
         [ 1,ww,  0,  0];
         [ww,-1,  0,  0]];
         
    k1 = k2 - del*(W *k2);
    kapa(:, j-1) = k1;
    k2 = k1;
end

w = zeros(n,1);

for j=1:n
    w(j) = (1-ni2) * ux(j) + ni2 * (kapa(:,j))' * (A * xx(:,j));
end
        
res.w = w;
res.kapa = kapa;
