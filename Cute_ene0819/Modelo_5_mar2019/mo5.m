clear all;
close all;

t1 = 0.0;
t2 = 2.47;

delt = 0.000011
t = (t1:delt:t2)';

np = length(t)

v = 0 * 0.589*sin(6.0*t+0.41);
%w = ones(np,1);
w = 0.589*sin(6.0*t+0.41);

landa =  zeros(4,np);
landa(4,:) =  4.53*ones(1,np);


for i=1:2
    res1 = fun1(i, delt, v, w, landa);
    if mod(i,1)== 2
        figure(1)
        subplot(2,1,1)
        plot(res1.uy)
        xlabel(["uy, ux, iteracion: ",int2str(i)])
        subplot(2,1,2)
        plot(res1.ux)
        saveas(gcf, ["fig_uyux_10_ESTOCASTICIDAD_"+num2str(i)+".jpg"]);
    end
    
    res2 = fun2(delt, res1.uy, res1.ux, res1.x);
    v = res2.v;
    w = res2.w;
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

norma = sqrt(xw.^2 + yw.^2 + zw.^2);
xw = xw./norma;
yw = yw./norma;
zw = zw./norma;


[xx,yy,zz] = sphere;
figure(5)
hold on
%plot(x.^2 + y.^2 + z.^2)
surf(xx,yy,zz, 'FaceAlpha',0.5, 'EdgeColor', 'none')
if i == 2
plot3(xw,yw,zw, 'LineWidth',1)
end
%plot(ll)

np = length(xw);
teta= - pi/4.5;
%plot3(xw*cos(teta) + yw*sin(teta), xw*sin(teta)-yw*cos(teta), -zw, 'LineWidth',1)

saveas(gcf, ["fig_esfera_10_ESTOCASTICIDAD_"+num2str(i)+".jpg"]);
end
end




