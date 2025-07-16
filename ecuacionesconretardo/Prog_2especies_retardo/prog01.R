del = 10^(-4)

t1 = 0
t2 = 60

np = round((t2-t1)/del) + 1

t = seq(t1, t2, length.out = np)

del = t[2] - t[1]

p = matrix(rep(1,2*np), ncol=2)

numiter = 10

nom = 'fig_'

for (k in 1:numiter){
  print(file)
x = matrix(rep(0,2*np), ncol=2)

x1 = c(1,1)
x[1,] = x1

for (i in 2:np){
  mat1 = matrix(c(1, x1[2], -x1[1], -1), ncol=2)
  mat2 = matrix(c(p[i-1,1]*x1[1], 0, 0, p[i-1,2]*x1[2]), ncol=2)
  x2 = x1 + del * (mat1 %*% x1 - .4*mat2 %*% x1)
  x[i,] = x2
  x1 = x2
}

p2 =  c(.7, .5)
p[np,] = p2

for (i in (np-1):1){
  mat1 = matrix(c(1, -x[i,1], x[i,2], 1), ncol = 2)
  mat2 = matrix(c(x[i, 2]-.4*p2[1]*x[i,1], 0, 0, x[i, 1]-.4*p2[2]*x[i,2]), ncol=2)
  p1 = p2 - del* (mat1 %*% p2 + mat2 %*% p2)
  p[i,] = p1
  p2 = p1
}

u = matrix(rep(0,2*np), ncol=2)

for (i in 1:np){
  u[i,] = p[i,] * x[i,]
}

if (k < 10){
   file = paste(nom,'0',k, '.jpeg', sep='')
} else {
   file = paste(nom,k, '.jpeg', sep='')
}

jpeg(file=file)

par(mfrow=c(3,2))

plot(x[,1], type='l')

plot(x[,2], type='l')

plot(p[,1], type='l')
  
plot(p[,2], type='l')

plot(u[,1], type='l')
 
plot(u[,2], type='l')
dev.off()
}
