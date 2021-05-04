function [x1, x2, x3] = Transforma2Dto3D(xc, yc)
   div = xc.^2 + yc.^2 + 4;
   x1 = 4*xc ./ div;
   x2 = 4*yc ./ div;
   x3 = 2*(xc.^2 + yc.^2) ./ div;
