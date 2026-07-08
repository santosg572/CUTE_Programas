
# b^2 - 4c

c = 1
d = 1
b = 4*c-5

cat("solucion de la ecuacion diferencial: x''+",b,"x'+",c,"x+",d,"=0\n")

#==================0  solucion analitica

t2 = 10
t = seq(0, t2, .01)

dd = as.complex(b^2-4*c)

r1 = (-b + sqrt(dd))/2
r2 = (-b - sqrt(dd))/2

print(r1)
print(r2)

num = -r1*(1+d/c)
den = r2-r1

B = num/den
A = -r2*B/r1

y = A*exp(r1*t) + B*exp(r2*t) - d/c

cat("solucion analitica: y(t) = e\n")

plot(t, y, type='l')

# solucion numerica =======================

n = length(t)

yy = matrix(rep(0, 2*n), ncol=2)

y1 = c(0,1)
A = matrix(c(-b, 1, -c, 0), ncol=2)
del1 = t[2] - t[1]
yy[1,] = y1
for (i in 2:n){
  y2 = y1 + del1*(A %*% y1 - c(d,0))
  yy[i,] = y2
  y1 = y2
}

yc = yy[,2]
print(yc[1])
points(t, yc+.01, type='l', col='red')

#========================== solucion con retardo

t2 = 5

tao = .01
del1 = .001
n = tao/del1+1


t = seq(0,tao,length.out = n)
y = rep(1, n)

nrep = t2/tao
cat('nrep:', nrep, '\n')

tt = t

for (i in 2:nrep){
  tt = c(tt, (i-1)*tao+t[2:n])
}


b = -1
c = 1
d = 1

nt = length(tt)

yy = matrix(rep(0, 2*nt), ncol=2)

y1 = c(0,1)
A = matrix(c(-b, 1, -c, 0), ncol=2)
del1 = t[2] - t[1]
yy[1,] = y1
for (i in 2:n){
  z = c(y1[i,1], 1)
  y2 = y1 + del1*(A %*% z - c(d,0))
  yy[i,] = y2
  y1 = y2
}

for (i in (n+1):nt){
  z = c(y1[i-1,1], yy[i-n,2]))
  y2 = y1 + del1*(A %*% z - c(d,0))
  yy[i] = y2
  y1 = y2
}


yc = yy[,2]
print(yc[1])
points(t, yc, type='l', col='blue')

