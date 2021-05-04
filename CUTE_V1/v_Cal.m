function v = v_Cal(landa, x)

% landa es un vector columna
% x es un vector columna
% v es un numero

   A = [[0,-1, 0, 0];
        [1, 0, 0, 0];
        [0, 0, 0,-1];
        [0, 0, 1, 0]];
    
   v = -1*landa' * (A*x);
   
   
    