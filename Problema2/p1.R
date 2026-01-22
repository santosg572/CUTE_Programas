h = .01
t2 = 6
n = t2/h

t = seq(0, t2, length.out = n)

x = (4*t+1)^(.25)

plot(t, x, type='l', lwd=3)

xx = rep(0, n)

x1 = 1
xx[1] = x1

for (i in 2:n){
  x2 = x1 + h / x1^3
  x1 = x2
  xx[i] = x1
}

points(t, xx+.01, type='l', lwd=3, col='red')

h = .01
tao = .5
n = tao/h
t2 = 6

print(n)
x = rep(1,n)
nn = 6/h

t = seq(0, t2, length.out = nn)
xx = rep(0, nn)

x1 = x[1]
xx[1] = x1
for (i in 2:n){
  x2 = x1 + h/(x1^2 * x[i-1])
  x1 = x2
  xx[i] = x1
}

print(nn)
print(n)

x1 = xx[n]
print(x1)
print(xx[1])
for (i in (n+1):nn){
  x2 = x1 + h/(x1^2 * xx[i-n])
  x1 = x2
  xx[i] = x1
}

points(t, xx, type='l', col='blue', lwd=3)

h = .01
tao1 = .4
n1 = tao1/h
tao2 = 1
n2 = tao2/h

t2 = 6

x = rep(1,n2)
nn = 6/h

t = seq(0, t2, length.out = nn)
xx = rep(0, nn)

x1 = x[1]
xx[1] = x1
for (i in 2:n1){
  x2 = x1 + h/(x1*x[i-1] * x[i-1])
  x1 = x2
  xx[i] = x1
}

x1 = xx[n1]
for (i in (n1+1):n2){
  x2 = x1 + h/(x1 * xx[i-n1]* x[i])
  x1 = x2
  xx[i] = x1
}

x1 = xx[n2]
for (i in (n2+1):nn){
  x2 = x1 + h/(x1 * xx[i-n1]* xx[i-n2])
  x1 = x2
  xx[i] = x1
}

points(t, xx, type='l', col='green', lwd=3)

