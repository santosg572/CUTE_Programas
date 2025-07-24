SolucionXPU <- function(del=0, pp=0, wx1=0, wx2=0){
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
   		A = matrix(c(1 - 0.4 * u[1], x1[2], -x1[1], -1 - 0.2*u[2]), ncol=2)
		res = A %*% x1
#		cat('w1=',w1,' w2=', w2,'\n')
#		print('x1')
#		print(x1)
#		print('del*res')
#		print(del*res)
	  	x2 = x1 + del*res + c(w1, w2)
#	  	cat('x2=', x2,'\n')
	  	xx[i,] = x2
	  	x1 = x2
#	  	print(x1)
		p1 = pp[i,]
		w1 = dwx1[i]
		w2 = dwx2[i]
		#u1 = Calu(x1, p1)
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

