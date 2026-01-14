rm(list=ls())

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

tao = 2
t = seq(0, tao, length.out=n)
tp = t

ff = 1-t/5
tt = t
t = t+2

ff = c(ff, (t^2-14*t+54)/50)
tt = c(tt, t)
t = t + 2
ff = c(ff, (874 - 258*t + 27*t^2-t^3)/750)
tt = c(tt, t)



plot(tt, ff, type='l', lwd=2)

# solucion de x'=-(x-2)/5,  x(t) = 1 en t \in [-2,0]

# Solucion numerica

x = rep(1, n)

cat(' modificado: ene1426')

del1 = tp[2] - tp[1]

rr = c()
tt = c()

for (i in 1:3){
  x = Integral(x[n], x, del1)
  tt = c(tt, tp)
  tp = tp+2
  rr = c(rr, x)
}

points(tt, rr+.01, type='l', lwd=2, col='red')



