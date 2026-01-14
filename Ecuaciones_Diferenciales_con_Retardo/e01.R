t1 = 0
t2 = 6

del1 = .01

t = seq(t1, t2, del1)

xA = exp(-t/5)

plot(t, xA, type='l', lwd=2)

# solucion de x'=-x/5 x(0) =1

n = length(t)

xN = rep(0, n)

x1 = 1
xN[1] = x1

for (i in 2:n){
  x2 = x1 + del1 * (-x1/5)
  x1 = x2
  xN[i] = x1
}

points(t, xN+.01, type='l', lwd=2, col='red')


