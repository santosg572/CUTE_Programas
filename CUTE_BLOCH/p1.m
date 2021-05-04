fileID = fopen('datos2.txt','r');
formatSpec = '%d %f %f %f %f';
sizeA = [5 Inf];
A = fscanf(fileID,formatSpec,sizeA);
A=A';
fclose(fileID);
size(A)
A(1:10,:)

x1 = A(:,2);
x2 = A(:,3);
x3 = A(:,4);
x4 = A(:,5);

xx = -2*(x1.*x2 + x3.*x4);
yy = 2*(x1.*x4 - x2.*x3);
zz = x1.*x1 + x3.*x3 - x2.*x2 - x4.*x4;

xx.*xx+ yy.*yy + zz.*zz

%[x1',x2',x3',x4']

