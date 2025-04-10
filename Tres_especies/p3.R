library(scatterplot3d)

del = .0001
np = 600000

t = del * 1:np

del = t[2] - t[1]

print(del)

X = matrix(rep(0, 3*np), nrow=3)
U = matrix(rep(0, 3*np), nrow=3)

U[1,] = 1

X[,1] = c(.7, .7, .5)

A= .4
B= .2
C= .07

beta =  0.1
delta = 0.8
epsi = 0.5


x1 = X[,1]

for (i in 2:np){
   u = U[,i-1]
   T1 = matrix(c(0, -beta * x1[2], delta * x1[3], -beta * x1[1], 0, epsi *x1[3], -delta * x1[1], -epsi * x1[2],0), ncol=3)
   T2 = matrix(c(A * u[1], 0, 0, 0, B * u[2], 0, 0, 0,C*u[3]), ncol=3)
   x2 = x1 + del*(c(x1[1], x1[2], -x1[3]) + T1 %*% x1 + T2 %*% x1)
   X[,i] = x2
   x1 = x2
}

par(mfrow=c(2,2))

plot(X[1,], type='l')
plot(X[2,], type='l')
plot(X[3,], type='l')


P = matrix(rep(0, 3*np), nrow=3)

print(np)

P[,np] = c(.5, .5, .7)

p2 = P[,np]

for (i in (np-1):1){
   x = X[,i+1]
   u = U[,i+1]
   c1 = -1 + beta * x[2] + A * u[1] + delta * x[3]
   c2 = -1 + beta * x[1] + B * u[2] + epsi * x[3]
   c3 =  1 + C * u[3] - epsi * x[2] - delta * x[1]
   T = matrix(c(c1, beta * x[1], delta * x[1], beta*x[2], c2, epsi * x2[2], -delta*x[3], -epsi * x[3], c3), ncol=3)
   p1 = p2 - del * (x + T %*% p2)
   P[,i] = p1
   p2 = p1
}

par(mfrow=c(2,2))

print(range(P[1,]))

p1 = P[1,]
p2 = P[2,]
p3 = P[3,]

p1[is.na(p1)] = 0
p2[is.na(p2)] = 0
p3[is.na(p3)] = 0

plot(p1, type='l')
plot(p2, type='l')
plot(p3, type='l')

scatterplot3d(
  x = X[1,],
  y = X[2,],
  z = X[3,], type='l'
)





