rm(list=ls())

# https://hackmd.io/y51KdUxgQuGN4u3Tfv-s3Q

SolucionTeorica <- function(n=0){
  tao = 2
  t = seq(0, tao, length.out=n)
  del1 = t[2] - t[1]
  ff = 1-t/5
  tt = t
  t = t+2
  ff = c(ff, (t^2-14*t+54)/50)
  tt = c(tt, t)
  t = t + 2
  ff = c(ff, (874 - 258*t + 27*t^2 - t^3)/750)
  tt = c(tt, t)
  ret = list(tt, ff, del1)
}

Integral <- function(x1=0, x=0, del1=0){
  n = length(x)
  xx = rep(0,n)
  x1 = x[n]

  xx[1] = x1

  for (i in 2:n){
    x2 = x1 + del1 * (-x[n-1]/5)
    x1 = x2
    xx[i] = x1
  }
  ret = xx 
}


n = 500

ss = SolucionTeorica(n)

plot(ss[[1]], ss[[2]], type='l', lwd=2)

# solucion de x'=-(x-2)/5,  x(t) = 1 en t \in [-2,0]

# Solucion numerica

del1 = ss[[3]]

t = seq(
x = rep(1, n)

cat(' modificado: ene1426')

rr = c()
tt = c()

for (i in 1:3){
  x = Integral(x[n], x, del1)
  tt = c(tt, tp)
  tp = tp+2
  rr = c(rr, x)
}

points(tt, rr+.01, type='l', lwd=2, col='red')



