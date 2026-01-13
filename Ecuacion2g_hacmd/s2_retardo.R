Integral0 <- function(n = 0, del1=0, x1=0){
  xx = matrix(rep(0,2*n), nrow=2)
  xx[,1] = x1

  A = matrix(c(0,1,4,0), ncol=2)

  for (i in 2:n){
    x0 = t[i-1]
    x2 = x1 + del1* (A %*% x1 + c(2,0))
    x1 = x2
    xx[,i] = x1
  }
  ret = xx
}

Integral2 <- function(n = 0, del1=0, x1=0 , fun=0){
  xx = matrix(rep(0,2*n), nrow=2)
  xx[,1] = x1

  for (i in 2:n){
    ff = fun[,i-1]
    x2 = x1 + del1* ff
    x1 = x2
    xx[,i] = x1
  }
  ret = xx
}


x1 = 0
x2 = 1
n = 500
t = seq(x1, x2,length.out = n)

n = length(t)

del1 = t[2] - t[1]

print(del1)

tt = t
fun = Integral0(n, del1, c(-1,1))
xx = fun

for (i in 1:4){
  fun = Integral2(n, del1, fun[,n], fun)
  t = x2+t
  tt = c(tt, t)  
  xx = cbind(xx, fun)
}

print(dim(xx))

x = exp(-2*tt) + exp(2*tt)/2 - 1/2
plot(tt, x, type='l', lwd=3)
points(tt, xx[2,], type='l', col='red', lwd=5)






