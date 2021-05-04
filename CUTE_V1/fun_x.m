function res = fun_x(landa, x)

% landa es un vector columna
% x es un vector columna
% res es un vector fila

   A = [[0,-1, 0, 0];
        [1, 0, 0, 0];
        [0, 0, 0,-1];
        [0, 0, 1, 0]];
   
   u = -1*(landa)' * (A * x);
       
   U = [[0,-u,-1, 0];
        [u, 0, 0, 1];
        [1, 0, 0,-u];
        [0,-1, u, 0]];
 
   res = U*x;