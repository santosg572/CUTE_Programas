clear all
close all

delta1 = 0.5;
delta2 = 1.5;
ni1 = 1.5;
ni2 = 0.5;

t1 = 0;
t2 = pi/sqrt(2);

np = 100000;
t = linspace(t1, t2, np);
delta = t(2)-t(1)

randn('state',100);

dw = sqrt(delta)*randn(np,1);

v = cos(t);
w = ones(np,1);

landa = zeros(4, np);
landa(1,:) = t;

A = [[0, -1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0, -1];
     [0, 0, 1, 0]];
 
B = [[0, 0, 0, -1];
     [0, 0, -1, 0];
     [0, 1, 0, 0];
     [1, 0, 0, 0]];

x = zeros(4,np);
ux = zeros(np,1);
uy = zeros(np,1);

figure(1)

for k=1:100
    x(:,1) = [1,0,0,0]';
    for i = 2:np
        uy(i-1) = (1-delta1)* v(i-1) + delta1 * (landa(:,i-1))'*(A * x(:,i-1));
        ux(i-1) = (1-delta2)* w(i-1) + delta2 * (landa(:,i-1))'*(B * x(:,i-1));
        C = [[0,      -uy(i-1),      -1, -ux(i-1)];
             [uy(i-1),       0,-ux(i-1),        1];
             [1,       ux(i-1),       0, -uy(i-1)];
             [ux(i-1)       -1, uy(i-1),        0]];
       
        D = [[0,             0,        0, -ux(i-1)];
             [0,             0, -ux(i-1),        0];
             [0,       ux(i-1),        0,        0];
             [ux(i-1),       0,        0,        0]];
        x(:, i) = x(:, i-1) + (C * x(:, i-1))*delta + (D*x(:,i-1))*dw(i-1);
    end
    uy(np) = (1-delta1)* v(np) + delta1 * (landa(:,np))'*(A * x(:,np));
    ux(np) = (1-delta2)* w(np) + delta2 * (landa(:,np))'*(B * x(:,np));
    
%    figure('Name', int2str(k))
%    subplot(2,2,1)
%    plot(x(1,:))
%    subplot(2,2,2)
%    plot(x(2,:))
%    subplot(2,2,3)
%    plot(x(3,:))
%    subplot(2,2,4)
%    plot(x(4,:))
     figure(2)
     plot(t, ux)
    
    landa(:, np) = [0, x(2,np), 0, 0]';
    
    for (j = np:2)
        v(j) = (1-ni1)*uy(j) + ni1 * (landa(:,j))' * (A*x(:,j));
        w(j) = (1-ni2)*ux(j) + ni2 * (landa(:,j))' * (B*x(:,j));
        E = [[-w(j)^2,    v(j),       1,    w(j)];
             [-v(j)  , -w(j)^2,    w(j),      -1];
             [-1     ,   -w(j), -w(j)^2,    v(j)];
             [-w(j)  ,       1,   -v(j), -w(j)^2]];
    
        F = [[0, 0, 0, w(j)];
             [0, 0, w(j), 0];
             [0, -w(j), 0, 0];
             [-w(j), 0, 0, 0]];
     
        landa(:, j-1) = landa(:,j) - (E*landa(:,j))*delta - D*landa(:,j)*dw(j)
    end
    v(1) = (1-ni1)*uy(1) + ni1 * (landa(:,1))' * (A*x(:,1));
    w(1) = (1-ni2)*ux(1) + ni2 * (landa(:,1))' * (B*x(:,1));

    k
end  


