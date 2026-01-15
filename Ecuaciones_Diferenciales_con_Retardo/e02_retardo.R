rm(list=ls())

# https://hackmd.io/zvjj-YNfT6SbdG7xKVUzAA

# Ejemplo 1

SolucionTeorica <- function(n=0){
  t2 = 6
  t = seq(0, t2,  length.out=n)

  y = exp(2*t) + 7*exp(-t)/4 + exp(3*t)/4
  ret = list(t, y)
}

n = 500
rr = SolucionTeorica(n)
plot(rr[[1]], rr[[2]], type='l')

Solucion_Numerica <- function(n=0){
  t2 = 6
  t = seq(0, t2,  length.out=n)

  A = matrix(c(1,1,2,0), ncol=2)

  xx = matrix(rep(0, 2*n), nrow=2)

  x1 = c(1,3)

  xx[,1] = x1
  del1 = t[2]-t[1]

  for (i in 2:n){
    x2 = x1 + del1 * (A %*% x1 + c(exp(3*t[i-1]), 0))
    x1 = x2
    xx[,i] = x1
  }
  ret = list(t, xx)
}

ss = Solucion_Numerica(n)

t = ss[[1]]
x = ss[[2]]
points(t, x[2,], type='l', lwd=3, col='red')


