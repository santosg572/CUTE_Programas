np=600

t = seq(0, 60, length.out = np)

del = t[2] - t[1]

u1 = rep(1, np)
u2 = rep(0, np)
u3 = rep(0, np)

X = matrix(rep(0, 3*np), nrow=3)

X[,1] = c(.7, .7, .5)

A=1
B=1
C=1

x1 = X[,1]

for (i in 2:np){
   T1 = matrix(c(0, x1[2], x1[3], x1[1], 0, x1[3], -x1[1], -x1[2],0), ncol=3)
   T2 = matrix(c(A*u1[i], 0, 0, 0, B*u2[i], 0,0,0,C*u3[3]), ncol=3)
   x2 = x1 + del*(x1 * T1 %*% x1 + T2 %*% x1)
   X[,i] = x2
   x1 = x2
}

par(mfrow=c(2,2))

plot(X[1,], type='l')
plot(X[2,], type='l')
plot(X[3,], type='l')






