function [res, t] = resulve_x(t0, t1, landa, y0)
% landa es un arreglo de nx4
% y0 es un vector columna
% res es una matriz n x 4

    n = 23000;
    t = linspace(t0, t1, n);
    t = t';
    del = t(2)-t(1);
    y = zeros(n,4);
    y(1,:) = y0';
    
    y1 = y0;
    for i=2:n
        lan = landa(i-1,:);
        y2 = y1 + del * fun_x(lan' , y1);
        y1 = y2;
        y(i,:) = y2';
    end
    res = y;