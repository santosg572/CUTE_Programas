x1 = 0
x2 = 5

t = seq(x1,x2,.01)

x = exp(-2*t) + exp(2*t)/2 - 1/2

plot(t, x, type='l', lwd=3)

n = length(t)

del1 = t[2] - t[1]

xx = matrix(rep(0,2*n), nrow=2)

x1 = c(-1, 1)
xx[,1] = x1

A = matrix(c(0,1,4,0), ncol=2)


for (i in 2:n){
#  print(x1)
  x0 = t[i-1]
  x2 = x1 + del1* (A %*% x1 + c(2,0))
#  print(x2)
  x1 = x2
  xx[,i] = x1
}

points(t, xx[2,], type='l', col='red', lwd=3)






