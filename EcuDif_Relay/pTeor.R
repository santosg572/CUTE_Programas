#tao = .5
#niter = 8

#tao = 1
#niter = 14

tao = 1.5
niter = 14

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

r <- Gen_delay_Teorico()

plot(r$t, r$x, type='l')

