del = .0001

t = seq(0,60,del)

np = length(t)

p = matrix(rep(c(1,0,0), np), nrow=3)

# intrinsic growth rates of two preys and predator population, respectively

ni = .2
w = .25
k = .15

# are positive constants meaning the contact rates per unit of time between prey-prey, predator-first prey and predator-second prey, 
#respectively

beta = .11
delta = .12
epsi = .13

A = c(.1, .2, .3)

GenXU <- function(p=0){
   x = matrix(rep(0,3*np), nrow=3)
   x1 = c(.7,.7,.5)
   x[,1] = x1

   for (i in 2:np){
      pp = p[,i]
      uu = -A*pp*x1
      c1 = ni - beta  * x1[2] - delta * x1[3] - A[1] * uu[1]
      c2 =  w - beta  * x1[1] - epsi  * x1[3] - A[2] * uu[2]
      c3 = -k + delta * x1[1] + epsi  * x1[2] - A[3] * uu[3]
      mat = matrix(c(c1,0,0,0,c2,0,0,0,c3), ncol=3)
      x2 = x1 + del * (mat %*% x1)
      x[,i] = x2
      x1 = x2
   }

   u = matrix(rep(0,3*np), nrow=3)
      
   for (i in 1:np){
      uu = -A*p[,i]*x[,i]
      u[,i] = uu
   }
   ret=list(x=x,u=u)
}

GenP <- function(x=0, u=0){
   p = matrix(rep(0,3*np), nrow=3)
   p2 = c(.5,.7,.7)
   p2 = x[,np]
   print(p2)
   p[,np] = p2
   cc = c(ni, w, k)

   for (i in (np-1):1){
      xx = x[,i+1]
      uu = u[,i+1]
      c1 = -1 + beta  * xx[2] + delta * xx[3] + A[1] * uu[1]
      c2 = -1 + beta  * xx[1] + epsi  * xx[3] + A[2] * uu[2]
      c3 =  1 - delta * xx[1] - epsi  * xx[2] + A[3] * uu[3]
      mat1 = matrix(c(c1,0,0,0,c2,0,0,0,c3), ncol=3)
      mat2 = matrix(c(0, beta*xx[1], delta*xx[1], beta*xx[2], 0, epsi*xx[2], -delta*xx[3], -epsi*xx[3],0), ncol=3)
      p1 = p2 - del*(cc * xx + mat1 %*% p2  + mat2 %*% p2)
      p[,i] = p1
      p2 = p1
   }
   ret = p
}

R <- GenXU(p)

x = R$x
u = R$u

par(mfrow=c(2,2))

plot(t, x[1,], type='l')
plot(t, x[2,], type='l')
plot(t, x[3,], type='l')

par(mfrow=c(2,2))

plot(t, u[1,], type='l')
plot(t, u[2,], type='l')
plot(t, u[3,], type='l')

p <- GenP(x,u)

par(mfrow=c(2,2))
  
plot(t, p[1,], type='l')
plot(t, p[2,], type='l')
plot(t, p[3,], type='l')

