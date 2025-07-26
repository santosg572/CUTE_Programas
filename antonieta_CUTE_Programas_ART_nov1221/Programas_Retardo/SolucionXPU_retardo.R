SolucionXPU_retardo <- function(del=0, pp=0, wx1=0, wx2=0, X0=0, XI=0){
   print('--------------------- SolucionXPU.R ----------------------')
   ss = dim(pp)

   n = ss[1]
   print(n)

   xx = matrix(rep(0,2*n), ncol=2)

   dwx1 = wx1 *sqrt(del)*runif(n)
   dwx2 = wx2 *sqrt(del)*runif(n)
   

   x1 = X0
   xx[1,] = x1
   p1 = pp[1,]
   w1 = dwx1[1]
   w2 = dwx2[1]
   u = Calu1u2(x1, p1)
	
   for (i in 2:n){
      XX = XI[i-1,]
      A = matrix(c(1 - 0.4 * u[1], XX[2], -XX[1], -1 - 0.2*u[2]), ncol=2)
      res = A %*% x1
      x2 = x1 + del*res + c(w1, w2)
      xx[i,] = x2
      x1 = x2
      p1 = pp[i,]
      w1 = dwx1[i]
      w2 = dwx2[i]
      u = Calu1u2(x1, p1)
   }
   
   uu = matrix(rep(0,2*n), ncol=2)
   
   for (i in 1:n){
      pi = pp[i,]
      xi = xx[i,]
      uu[i, ] = Calu1u2(xi,pi)
   }
     
   res = list(xx=xx, uu=uu)
}

