n = 500

t = seq(0, 6, length.out = n)

x = exp(-2*t) + exp(2*t)/2 - 1/2

plot(t,x, type='l', lwd=3)

Integral <- function(x1=0, del1=0){
  xx = matrix(rep(0, 2*n), nrow=2)
  xx[,1] = x1
  A = matrix(c(0,1,4,0), ncol=2)

  for (i in 2:n){
    x2 = x1 + del1 * (A %*% x1 + c(2,0))
    x1 = x2
    xx[,i] = x1
  }
  ret = xx
}

x1 = c(-1,1)
del1 = t[2] - t[1]
x = Integral(x1, del1)
points(t, x[2,], type='l', col='red')





