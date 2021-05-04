clear all
close all

delta1 = 0.5;
delta2 = 1.5;
ni1 = 1.5;
ni2 = 0.5;

np = int64(100000);

t1 = 0;
t2 = pi/sqrt(2);


t = linspace(t1, t2, np);
delta = t(2)-t(1)

randn('state',100);
dw = sqrt(delta)*randn(np,1);

v = cos(t);
w = ones(np,1);

landa = zeros(4, np);
landa(1,:) = t;

A = [[0,-1, 0, 0];
     [1, 0, 0, 0];
     [0, 0, 0,-1];
     [0, 0, 1,0]];
 
B = [[0, 0, 0,-1];
     [0, 0,-1, 0];
     [0, 1, 0, 0];
     [1, 0, 0, 0]];


for k=1:1
    x = zeros(4,np);
    x(:,1) = [1,0,0,0]';
    uy = zeros(np,1);
    ux = zeros(np,1);
    
    for i = 1:(np-1)
        uy(i) = (1-delta1)* v(i) + delta1 * (landa(:,i))'*(A * x(:,i));
        ux(i) = (1-delta2)* w(i) + delta2 * (landa(:,i))'*(B * x(:,i));
        uy1 = uy(i);
        ux1 = ux(i);
        C = [[  0,-uy1,  -1,-ux1];
             [uy1,   0,-ux1,   1];
             [  1, ux1,   0,-uy1];
             [ux1,  -1, uy1,   0]];
       
        D = [[  0,   0,    0, -ux1];
             [  0,   0, -ux1,    0];
             [  0, ux1,    0,    0];
             [ux1,   0,    0,    0]];
         
        x(:, i+1) = x(:, i) + (C * x(:, i))*delta + (D*x(:,i))*dw(i);
    end
    
    uy(np) = (1-delta1)* v(np) + delta1 * (landa(:,np))'*(A * x(:,np));
    ux(np) = (1-delta2)* w(np) + delta2 * (landa(:,np))'*(B * x(:,np));
    
%    if (mod(k,5) == 0)
    figure('Name', int2str(k))
%    subplot(2,2,1)
%    plot(x(1,:))
%    subplot(2,2,2)
%    plot(x(2,:))
%    subplot(2,2,3)
%    plot(x(3,:))
%    subplot(2,2,4)
%    plot(x(4,:))
%    title(["iteracion k=",int2str(k)])
    
     subplot(2,1,1)
     plot(t, ux)
     subplot(2,1,2)
     plot(t, uy)
%    end
%    x(2,np)
    landa = zeros(4, np);
    landa(:, np) = [0, x(2,np), 0, 0]';
    
    v = zeros(np,1);
    w = zeros(np,1);
    for j = np:-1:2
        v(j)= (1-ni1)*uy(j) + ni1 * (landa(:,j))' * (A*x(:,j));
        w(j)= (1-ni2)*ux(j) + ni2 * (landa(:,j))' * (B*x(:,j));
        v1 = v(j);
        w1 = w(j);
        w2 = w1^2;
%        w2 = 0
        E = [[-w2, v1,  1, w1];
             [-v1,-w2, w1, -1];
             [ -1,-w1,-w2, v1];
             [-w1,  1,-v1,-w2]];
    
        F = [[  0,  0, 0, w1];
             [  0,  0,w1,  0];
             [  0,-w1, 0,  0];
             [-w1,  0, 0,  0]];
     
        landa(:, j-1) = landa(:,j) - (E*landa(:,j))*delta - D*landa(:,j)*dw(j);
    end
    
    v(1) = (1-ni1)*uy(1) + ni1 * (landa(:,1))' * (A*x(:,1));
    w(1) = (1-ni2)*ux(1) + ni2 * (landa(:,1))' * (B*x(:,1));
    k
end  

%Umean = mean(UX);
%plot(Umean)

