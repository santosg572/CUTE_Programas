function res = resulve_landa(t0, t1, landaf, x)

% landaf es un vector columna
% x es un una matriz n x 4
% res es una matriz n x 4

    n = 23000;
    t = linspace(t0, t1, n);
    del = t(2)-t(1)
    landa = zeros(n,4);
    landa(n,:) = landaf';
    
    l2 = landaf;
    for i=n:-1:2
        xx = x(i,:);
        l1 = l2 - del * fun_landa(l2, xx');
        l2 = l1;
        landa(i-1,:) = l1';
    end
    res = landa;
