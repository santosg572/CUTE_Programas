figure
[x,y,z] = sphere;
surf(x,y,z)  % sphere centered at origin
hold on
surf(2*x+3, 2*y-2, 2*z)  % sphere centered at (3,-2,0)
surf(x,y+1,z-3, 'FaceColor','interp',...
   'EdgeColor','none',...
   'FaceLighting','phong')  % sphere centered at (0,1,-3)
daspect([1 1 1])
axis tight
view(-50,30)
camlight left
