clear all;
close all;

t1 = 0.0;
t2 = pi/sqrt(2);

np=10000
t = linspace(t1, t2, np);
delt = t(2) - t(1)

v = cos(t);
w = ones(np,1);
cc = 1000*ones(np,1);
landa =  zeros(4,np);
landa(1,:) = cc;
landa(2,:) = cc;
landa(3,:) = cc;
landa(4,:) = cc;


for i=1:10
    res1 = fun1_3_BIS_BIS(i, np, delt, v, w, landa,1);
    if mod(i,1)== 0
        figure(1)
        subplot(2,1,1)
        plot(res1.uy)
        xlabel(["uy, ux, iteracion: ",int2str(i)])
        subplot(2,1,2)
        plot(res1.ux)
        saveas(gcf, ["fig_uyux_10_ESTOCASTICIDAD_"+num2str(i)+".jpg"]);
    end
    
    res2 = fun2_3_BIS_BIS(delt, res1.uy, res1.ux, res1.x,1);
    v = res2.v;
    w = res2.w;
    'vvvvv======================================';
    v';
    landa = res2.landa;
%end

if mod(i,1)== 0
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
plot3(xw,yw,zw, 'LineWidth',5)
%plot(ll)

saveas(gcf, ["fig_esfera_10_ESTOCASTICIDAD_"+num2str(i)+".jpg"]);
end
end




