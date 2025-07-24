Calu1u2 <- function(x=0, p=0){
	u1 <- -.4*p[1]*x[1]
	u2 <- -.2*p[2]*x[2]

#	cat('x=',x,'\n')
#	cat('p=',p,'\n')
#	cat('u=',u,'\n')

	if (u1 < 0){
		u1 = 0
	} else if (u1 > 1){
		u1 = 1
	}
	if (u2 < 0){
		u2 = 0
	} else if (u2 > 1){
		u2 = 1
	}
	res = c(u1, u2)
}
