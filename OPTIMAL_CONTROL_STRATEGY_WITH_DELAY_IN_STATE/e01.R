h = .001
t2 = 1/2
n = t2 / h

t = seq(0, t2, length.out=n)

x = sqrt(1/(1-2*t))

plot(t,x, type='l')

x1 = 1

x = rep(0,n)
x[1] = x1

for (i in 2:n){
  x2 = x1 + h * x1^3
  x1 = x2
  x[i] = x1
}

points(t,x, type='l', col='red')

tao1 = .07
tao2 = .3

n2 = tao2 / h
n1 = tao1 / h

print(c(n1, n2))
  
