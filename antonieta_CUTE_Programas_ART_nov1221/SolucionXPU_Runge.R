SolucionXPU_Runge <- function(del=0, pp=0, wx1=0, wx2=0){
   ss = dim(pp)

   n = ss[1]
   print(n)

   xx = matrix(rep(0,2*n), ncol=2)
   
   wx1 = .15
   wx2 = .15
   
   dwx1 = wx1 *sqrt(del)*runif(n)
   dwx2 = wx2 *sqrt(del)*runif(n)
   

   	x1 = c(.5, .7)
   	xx[1,] = x1
	p1 = pp[1,]
	w1 = dwx1[1]
	w2 = dwx2[1]

A <- function(uu, xx){
	A = matrix(c(1 - 0.4 * uu[1], xx[2], -xx[1], -1 - 0.2*uu[2]), ncol=2)
	res = A %*% xx	
}
	u = Calu1u2(x1, p1)
	
   	for (i in 2:n){
 		k1 = A(u, x1)
 		k2 = A(u, x1+del*k1+c(w1, w2))
	  	x2 = x1 + .5*del*(k1 + k2) + c(w1, w2)

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

