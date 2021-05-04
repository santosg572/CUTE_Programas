function res = fun_landa(landa, x)

% landa es un vector columna
% x es un vector columna
% res es un vector columna

   v = v_Cal(landa, x);
   V = [[0,-v,-1, 0];
        [v, 0, 0, 1];
        [1, 0, 0,-v];
        [0,-1, v, 0]];
 
   res = V*x;
   