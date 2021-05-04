clear all;
close all;

t1 = 0;
t2 = 1.2*(pi /sqrt(2))-.4;

np=1000
t = linspace(t1, t2, np);
del = t(2) - t(1)

landa = zeros(4,np);

%landa(1,:) = 10*ones(1,np);
%landa(2,:) = 10*ones(1,np);
%landa(3,:) = 10*ones(1,np);
%landa(4,:) = 10*ones(1,np);

v = cos(5*t);
%w = ones(np,1);
w = sin(5*t)

%landa =  zeros(4,np);
%landa(1,:) = 3*ones(np,1);
landa(4,:) = 3*ones(np,1);

for i=1:100
    res1 = fun1_3_bisbis(i, np, del, v, w, landa);
    'paso i'
    if mod(i,1)== 0
        'uno'
        figure(1)
        'tres'
        subplot(2,1,1)
        'dos'
        plot(res1.uy)
        xlabel(["uy, ux, iteracion: ",int2str(i)])
        subplot(2,1,2)
        plot(res1.ux)
        saveas(gcf, ["fig_uyux_10000_ESTOCASTICIDAD_"+num2str(i)+".jpg"]);
    end
    'res2------------------------'
    res2 = fun2_3_bisbis(del, res1.uy, res1.ux, res1.x);
    v = res2.v;
    w = res2.w;
    'vvvvv======================================';
    v';
    landa = res2.landa;
%end

%if mod(i,1)== 0
 if i > 1   
x1 = res1.x(1,:);
x2 = res1.x(2,:);
x3 = res1.x(3,:);
x4 = res1.x(4,:);
    
xw = -2*(x1 .* x2 + x3 .* x4);
yw = 2*(x1 .* x4 - x2 .* x3);
zw = x1.^2 + x3.^2 -x2.^2 - x4.^2;

[xx,yy,zz] = sphere;
figure(5)
hold on
%plot(x.^2 + y.^2 + z.^2)
surf(xx,yy,zz, 'FaceAlpha',0.5, 'EdgeColor', 'none')
plot3(xw,yw,zw, 'LineWidth',2)
%plot3(-xw, yw, -zw, 'LineWidth',2)
plot3(xw, yw, -zw, 'LineWidth',2)
%plot(ll)

saveas(gcf, ["fig_esfera_10000_ESTOCASTICIDAD_"+num2str(i)+".jpg"]);
end
end




