del = .0001
np = 600000

t = del * 1:np

del = t[2] - t[1]

print(del)

u1 = rep(1, np)
u2 = rep(0, np)
u3 = rep(0, np)

X = matrix(rep(0, 3*np), nrow=3)

X[,1] = c(.7, .7, .5)

A= .4
B= .2
C= .07

beta =  0.1
delta = 0.8
epsi = 0.5


x1 = X[,1]

for (i in 2:np){
   T1 = matrix(c(0, -beta*x1[2], delta*x1[3], -beta*x1[1], 0, epsi*x1[3], -delta*x1[1], -epsi*x1[2],0), ncol=3)
   T2 = matrix(c(A*u1[i-1], 0, 0, 0, B*u2[i-1], 0,0,0,C*u3[i-1]), ncol=3)
   x2 = x1 + del*(c(x1[1], x1[2], -x1[3]) + T1 %*% x1 + T2 %*% x1)
   X[,i] = x2
   x1 = x2
}

P = matrix(rep(0, 3*np), nrow=3)

P[,np] = c(.7, .7, .5)

p2 = P[,np]

for (i in (np-1):1){
   c1 = -1+beta*x2[2]+A*u1[i+1]+delta*c1[3]
   c2 = -1+beta*x2[1]+B*u1[i+1]+delta*c1[3]
   T = matrix(c(-1+beta*x2[2]+A*u1[i+1] +

par(mfrow=c(2,2))

plot(X[1,], type='l')
plot(X[2,], type='l')
plot(X[3,], type='l')






