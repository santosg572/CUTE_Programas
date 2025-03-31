#tao = .5
#niter = 8

#tao = 1
#niter = 14

tao = 1.5
niter = 14

np = 100
t = seq(-1*tao, 0, length.out = np)

x = rep(1,np)
xx = x
tt = t

for (n in 1:niter){
  res = 1
  t = t + tao
  for (k in 1:n){
    res = res + (-1)^k *(t - (k-1)*tao)^k / factorial(k)
  }
  xx = c(xx, res)
  tt = c(tt,t)
}  

plot(tt, xx, type='l')

