function res = fun1_ux(kk, delt, v, w, landa)
"---------- fun1_ux -------------"
   del1 = 0.1;
   del2 = 0.50;
   np = length(v);
   
   randn('state',100);
   dw = sqrt(delt)*randn(np,1);
   
   x = zeros(4,np);
   x(:,1) = [1,0, 0, 0]';
   x1 = [1,0, 0, 0]';
   
   A = [[0, 0,-1, 0];
        [0, 0, 0, 1];
        [1, 0, 0, 0];
        [0,-1, 0, 0]];

    B = [[0,-1, 0, 0];
         [1, 0, 0, 0];
         [0, 0, 0,-1];
         [0, 0, 1, 0]];
     
    C = [[0, 0, 0, 0];
         [0, 0, 0, 0];
         [0, 0, 0, 0];
         [0, 0, 0, 0]];

    
    
   for i=1:(np-1)
      ll = landa(:,i);
      fx = 2*(1 + ll'*x1);
      yy = (1-del1)*v(i) - del1 * (ll'*(B*x1)) / fx;
      xx = (1-del2)*w(i) - del2 * (ll'*(C*x1)) / fx;
      D = [[ 0,-yy,  0,-xx];
           [yy,  0,-xx,  0];
           [ 0, xx,  0,-yy];
           [xx,  0, yy, 0]];
       
      x2 = x1 +  delt*(A * x1) + dw(i)*(D * x1);
      x(:, i+1) = x2;
      x1 = x2;
   end
   
   uy = zeros(np,1);
   ux = zeros(np,1);
   
   for i=1:np
       ll = landa(:,i);
       xx = x(:,i);
       fx = 2*(1 + ll'*xx);
       uy(i) = (1-del1)*v(i) - del1 * (ll'*(B*xx)) / fx;
       ux(i) = (1-del2)*w(i) - del2 * (ll'*(C*xx)) / fx;
   end
   'uyuyuy=============================================';
   uy';
   if mod(kk,1)== 0
       figure(2)
       subplot(2,2,1)
       plot(x(1,:))
       xlabel(["x1, x2, x3, x4, iteracion: ",int2str(kk)])
       subplot(2,2,2)
       plot(x(2,:))
       subplot(2,2,3)
       plot(x(3,:))
       subplot(2,2,4)
       plot(x(4,:))
       saveas(gcf, ["fig_x1x2x3x4_10_ESTOCASTICIDAD_"+num2str(kk)+".jpg"]);
   end
   res.ux = ux;
   res.uy = uy;
   res.x = x;
 