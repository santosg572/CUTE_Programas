function res = fun2(delt, uy, ux, x)
"------------- fun2  ------------"
   ni1 = 0.01;
   ni2 = 0.40;
   
   A = [[0, 0, 0, 0];
        [0, 0, 0, 0];
        [0, 0, 0, 0];
        [0, 0, 0, 0]];

   B = [[0, 0, 0,-1];
        [0, 0,-1, 0];
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
        fw = 2*(1+l2'*xx);
        v1 = (1-ni1) * uy(i) - ni1*(l2' * (A * xx)) / fw;
        w1 = (1-ni2) * ux(i) - ni2*(l2' * (B * xx)) / fw;
        w12 = w1^2;
        
        C = [[  0, v1, 0, w1];
             [-v1,  0,w1,  0];
             [  0,-w1, 0,-v1];
             [-w1,  0,v1,  0]];
 
        dd =  -w12-v1^2;
        D = [[dd, 0, 1, 0];
             [ 0,dd, 0,-1];
             [-1, 0,dd, 0];
             [ 0, 1, 0,dd]];
        
        l1 = l2 - (D*l2)*delt - (C*l2)*dw(i);
        landa(:, i-1) = l1;
        l2 = l1;
    end
    
    landa;
    
    v = zeros(np,1);
    w = zeros(np,1);

    for i=1:np
        ll = landa(:,i);
        xx = x(:,i);
        fw = 2*(1+ll'*xx);
        v(i) = (1-ni1) * uy(i) - ni1*(ll' * (A * xx)) / 4;
        w(i) = (1-ni2) * ux(i) - ni2*(ll' * (B * xx)) / 4;
    end
    
    res.v=v;
    res.w =w;
    res.landa = landa;
 