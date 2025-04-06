np=10

t = seq(0, 60, length.out = np)

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
   A = matrix(c(0, x1[2], x1[3], x1[1], 0, x1[3], -x1[1], -x1[2],0), ncol=3)
   B = matrix(c(A*u1[i], 0, 0, 0, B*u2[i], 0,0,0,C*u3[3]), ncol=3)
   x2 = x1 + del*(x1 * A %*% x1 + B %*% x1)
   X[,i] = x2
   x1 = x2
}


   x2 = x1 + del * (x1 + A * x1 
   x2 = x1    
