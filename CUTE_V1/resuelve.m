close all
clear all

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1, 0]];

t0 = 0.
t1 = pi/sqrt(2);

n = 23000;
landa = 10*ones(n, 4);
y0 = [1., 0, 0, 0]';

for i = 1:100
    [x, t] = resulve_x(t0, t1, landa, y0);
  %  subplot(2,2,1)
  %  plot(t, x(:,1))
  %  subplot(2,2,2)
  %  plot(t, x(:,2))
  %  subplot(2,2,3)
  %  plot(t, x(:,3))
  %  subplot(2,2,4)
  %  plot(t, x(:,4))
  
    uu = zeros(n,1);

    for j=1:n
        uu(j) = -1*landa(j, :) * (A * (x(j,:)'));
    end
    
    plot(uu)
    
    landa = resulve_landa(t0, t1, [0,0,0,x(n,4)]', x);
    '-----------------------------'
    i
    pause(1)
end


