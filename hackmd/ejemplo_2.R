rm(list=ls())

# solucion analitica

n = 500
t = seq(0,6, length.out = n)

solnum = exp(-2*t) + exp(2*t)/2 - 1/2

plot(t, solnum, type='l', lwd=3)

# solucion numerica

x1 = c(-1,1)
xx = matrix(rep(0, 2*n), nrow=2)
del1 = t[2] - t[1]
A = matrix(c(0,1,4,0), ncol=2)

for (i in 2:n){
  x2 = x1 + del1 * (A %*% x1 + c(2,0))
  x1 = x2
  xx[,i] = x1
}

points(t, xx[2,], type='l', lwd=3, col='red')

# Solucion de la ecuacion con retardo
#RET1

Integral <- function(x1=0, xx1=0, del1=0){
  A = matrix(c(0,1,4,0), ncol=2)
  ss = dim(xx1)
  n = ss[2]
  x1 = c(x1[1], xx1[2,n])
  xx = matrix(rep(0, 2*n), nrow=2)
  xx[,1] = x1
  
  xn = x1
  for (i in 2:n){
    x2 = x1 + del1 * (A %*% xn + c(2,0))
    x1 = x2
    xx[,i] = x2
    xn = c(x2[1], xx1[2,i-1])
  }
  ret = xx
}

tao = 2
n = 500
t = seq(0,2, length.out = n)

xr = matrix(rep(c(-1,1),n), ncol=n)

x1 = xr[,n]

tt = c()
xx = c()

for (i in 1:3){
   xr = Integral(x1, xr, del1)
   tt = c(tt, t)
   print(xr[2,1:5])
   xx = c(xx, xr[2,])
   x1 = xr[,n]
   t = t+2
}

points(tt, xx, type='l', lwd=3, col='blue')

  
# Solucion de la ecuacion con retardo
#RET1

Integral2 <- function(x1=0, xx1=0, del1=0){
  A = matrix(c(0,1,4,0), ncol=2)
  ss = dim(xx1)
  n = ss[2]
  x1 = c(xx1[1,n], x1[2])
  xx = matrix(rep(0, 2*n), nrow=2)
  xx[,1] = x1
  
  xn = x1   
  for (i in 2:n){
    x2 = x1 + del1 * (A %*% xn + c(2,0))
    x1 = x2
    xx[,i] = x2
    xn = c(xx1[1,i-1], x2[2])
  }
  ret = xx
}
 
tao = 1
n = 500
t = seq(0,1, length.out = n)
del1 = t[2]-t[1]
xr = matrix(rep(c(-1,1),n), ncol=n)

x1 = xr[,n]
  
tt = c()
xx = c()   
  
for (i in 1:6){
   xr = Integral2(x1, xr, del1)
   tt = c(tt, t)
   xx = c(xx, xr[2,])
   x1 = xr[,n]
   t = t+2 
}
    
points(tt, xx, type='l', lwd=3, col='green')
 
