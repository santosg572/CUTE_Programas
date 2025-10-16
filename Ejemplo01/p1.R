Integral <- function(del=0, fi=0){
  np = length(fi)

  x = rep(0, np)

  x1 = fi[np]  
  x[1] = x1

  for (i in 2:np){
    x2 = x1 + del * (x1 + fi[i-1])
    x[i] = x2
    x1 = x2
  }
  ret = x
}


tao = .01
del = .001

np = round(1/del +1)

t = seq(0, tao, length.out = np)

del = t[2] - t[1]

fi = rep(1, np)

niter = 500
tt = c()
xx = c()

for (i in 1:niter){
  tt = c(tt,t)
  x = Integral(del, fi)
  xx = c(xx, x)
  fi = x
  t = tao+t
}

plot(tt, xx, type='l')
y = exp(2*tt)
points(tt, y, type='l', col='red')


