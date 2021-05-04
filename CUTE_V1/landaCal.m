function [t, res] = landaCal(t0, t1, landaf, x)
% landaf - vector columna
% x      - vector columna

    n = 10000;
    t = linspace(t0, t1, n);
    del = t(2)-t(1)
    landa = zeros(n,4);
    landa(n,:) = landaf';
    
    for i=n:-1:2
        landa(i-1,:) = landa(i,:) - del * fun_landa(landa, x);
    end
    res = landa;