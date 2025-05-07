SolucionXPU_V2 <- function(del=0, pp=0, wx1=0, wx2=0){
   ss = dim(pp)

   n = ss[1]
   print(n)

   xx = matrix(rep(0,2*n), ncol=2)

   dwx1 = wx1 *sqrt(del)*runif(n)
   dwx2 = wx2 *sqrt(del)*runif(n)
   
   	x1 = c(.5, .7)
   	xx[1,] = x1
	p1 = pp[1,]
	w1 = dwx1[1]
	w2 = dwx2[1]
	#u1 = Calu(x1, p1)
	u = Calu1u2(x1, p1)
	
   	for (i in 2:n){
   		r = funX_abr2022 (x1, u)
   		x21 = x1[1] + del * r[[1]] + w1
   		x22 = x1[2] + del * r[[2]] + w2
   		x1 = c(x21, x22)
	  	xx[i,] = x1
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

