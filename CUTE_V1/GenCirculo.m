function [xc, yc] = GenCirculo(centro, radio)
   x0 = centro(1);
   y0 = centro(2);
   t = 0:.01:2*pi;
   xc = x0 + radio*cos(t);
   yc = y0 + radio*sin(t);
