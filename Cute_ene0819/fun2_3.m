function res = fun2_3(delt, uy, ux, x)
   ni1 = 1.5;
   ni2 = 0.5;
   
   A = [[0, -1, 0, 0];
        [1, 0, 0, 0];
        [0, 0, 0, -1];
        [0, 0, 1, 0 ]];
   B = [[0, 0, 0, -1];
        [0, 0,-1, 0 ];
        [0, 1, 0, 0];
        [1, 0, 0, 0]];
    
   np = length(uy);
 
   randn('state',100);
   dw = sqrt(delt)*randn(np,1);
    
   landa = zeros(4,np);
    
   landa(:,np) = [0, 0, 0, x(4,np)]';
   l2 = [0, 0, 0, x(4,np)]';
    
    for i=np:-1:2
        xx = x(:,i);
        fw = 2*l2'*xx;
        v1 = -.5 * ((1-ni1) * uy(i) + ni1*(l2' * (A * xx)));
        w1 = (1-ni2) * ux(i) + ni2*(l2' * (B * xx)) / fw;
        w12 = w1^2;
        C = [[-w12,   v1,     1,     w1];
             [  -v1,-w12,     w1,    -1];
             [   -1,   -w1, -w12,    v1];
             [   -w1,    1,   -v1, -w12]];
         
        D = [[  0,  0, 0, w1];
             [  0,  0,w1,  0];
             [  0,-w1, 0,  0];
             [-w1,  0, 0,  0]];
         l1 = l2 - (C*l2)*delt - (D*l2)*dw(i);
         landa(:, i-1) = l1;
         l2 = l1;
    end
    
    landa;
    
    v = zeros(np,1);
    w = zeros(np,1);

    for i=1:np
        ll = landa(:,i);
        xx = x(:,i);
        v(i) = (1-ni1) * uy(i) + ni1*(ll' * (A * xx));
        w(i) = (1-ni2) * ux(i) + ni2*(ll' * (B * xx));
    end
    
    res.v=v;
    res.w =w;
    res.landa = landa;
 