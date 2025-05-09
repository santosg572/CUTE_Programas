tao = 2
niter = 10

Gen_delay_Teorico <- function(){
   np = 100
   t = seq(-1*tao, 0, length.out = np)

   x = rep(1,np)
   #xx = x
   #tt = t
   tt = c()
   xx = c()

   for (n in 1:niter){
      res = 1
      t = t + tao
      for (k in 1:n){
         res = res + (-1)^k *(t - (k-1)*tao)^k / factorial(k)
      }
      xx = c(xx, res)
      tt = c(tt,t)
   } 
   ret <- list(t=tt, x=xx) 
}

Integral <- function(del, f){
   np = 100
   x = rep(0, np)

   x[1] = f[np]
   x1 = x[1]

   for (i in 2:np){
      x2 = x1 - del*f[i-1]
      x[i] = x2
      x1 = x2
   }
   ret = x
}

Gen_graf_Retardo_numerica <- function(){
   np = 100

   t = seq(-1*tao,0,length.out = np)

   del = t[2] - t[1]

   f = rep(1,np)
   ff = c()
   tt = c()

   for (i in 1:niter){
      t = t+tao
      x = Integral(del, f)
      ff = c(ff, x)
      tt = c(tt, t)
      f = x
   }
   ret <- list(t=tt, f=ff)
}

rt <- Gen_delay_Teorico()
   
plot(rt$t, rt$x, type='l')

rn <- Gen_graf_Retardo_numerica()

points(rn$t, rn$f, type='l', col='red')



