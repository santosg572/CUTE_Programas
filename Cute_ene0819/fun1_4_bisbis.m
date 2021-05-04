function res = fun1_4_bisbis(kk, np, delt, v, w, landa)
   del1 = 1.5;
   del2 = 0.5;
    
   randn('state',100);
   dw = sqrt(delt)*randn(np,1);
   
   x = zeros(4,np);
   x(:,1) = [1,0, 0, 0]';
   x1 = [1,0, 0, 0]';
   
   A = [[0, -1, 0, 0];
        [1, 0, 0, 0];
        [0, 0, 0, -1];
        [0, 0, 1, 0 ]];

    B = [[0, 0, 0, -1];
         [0, 0,-1, 0 ];
         [0, 1, 0, 0];
         [1, 0, 0, 0]];
    
    
   for i=1:(np-1)
      ll = landa(:,i);
      yy = (1-del1)*v(i) - .5* del1 * (ll'*(A*x1));
      fx = 2*(1-ll'*x1);
      xx = (1-del2)*w(i) - del2 * (ll'*(B*x1))/fx;
      C = [[ 0,-yy,-1, 0];
           [ yy, 0, 0, 1];
           [ 1, 0, 0,-yy];
           [ 0,-1, yy, 0]];
       
      D = [[0,0, 0,-xx];
           [0,0,-xx, 0];
           [0,xx, 0, 0];
           [xx,0, 0, 0]];
       
      x2 = x1 +  delt*(C * x1) + dw(i)*(D * x1);
      x(:, i+1) = x2;
      x1 = x2;
   end
   
   uy = zeros(np,1);
   ux = zeros(np,1);
   
   for i=1:np
       ll = landa(:,i);
       xx = x(:,i);
       uy(i) = (1-del1)*v(i) - .5* del1 * (ll'*(A*xx));
       fx = 2*(1-ll'*xx)
       ux(i) = (1-del2)*w(i) - del2 * (ll'*(B*xx)) / fx;
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
       saveas(gcf, ["fig_x1x2x3x4_10000_ESTOCASTICIDAD_"+num2str(kk)+".jpg"]);
   end
   res.ux = ux;
   res.uy = uy;
   res.x = x;
   