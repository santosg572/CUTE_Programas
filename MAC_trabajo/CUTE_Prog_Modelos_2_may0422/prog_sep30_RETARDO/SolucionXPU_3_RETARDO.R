SolucionXPU_3_RETARDO <- function(del=0, pp=0, wx1=0, wx2=0, wx3=0, fi=0){
   print('SolucionXPU_3_RETARDO')
   ss = dim(fi)

   n = ss[1]

   xx = matrix(rep(0,3*n), ncol=3)

   dwx1 = wx1 *sqrt(del)*runif(n)
   dwx2 = wx2 *sqrt(del)*runif(n)
   dwx3 = wx2 *sqrt(del)*runif(n)
   
   x1 = fi[n,]
   xx[1,] = x1
   p1 = pp[1,]
   w1 = dwx1[1]
   w2 = dwx2[1]
   w3 = dwx2[1]
	
   u = Calu1u2u3(x1, p1)
	
   for (i in 2:n){
      r = funX_ART2 (fi[i-1,], u)
      x21 = x1[1] + del * r[[1]] + w1
      x22 = x1[2] + del * r[[2]] + w2
      x23 = x1[3] + del * r[[3]] + w3
      x1 = c(x21, x22, x23)
      xx[i,] = x1
 #     p1 = pp[i,]
#      print(p1)
      w1 = dwx1[i]
      w2 = dwx2[i]
      w3 = dwx3[i]
      u = Calu1u2u3(x1, p1)
#      print(u)
   }
   
   uu = matrix(rep(0,3*n), ncol=3)
   
   for (i in 1:n){
      pi = pp[i,]
      xi = xx[i,]
#      print(xi)
       res = Calu1u2u3(xi,pi)
       print(res)
       uu[i, ] = Calu1u2u3(xi,pi)
   }
   
#   print(uu)  
   res = list(xx=xx, uu=uu)
}

