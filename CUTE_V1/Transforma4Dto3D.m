function [x,y,z] = Transforma4Dto3D(x1,x2,x3,x4)
   x = -2*(x1.*x2 + x3.*x4);
   y = 2*(x1.*x4 - x2.*x3);
   z = x1.^2 + x3.^2 - (x2.^2 + x4.^2);
   
   
   