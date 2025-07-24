gx <- function(x=0, u=0, p=0){
	u1 = u[1]
	u2 = u[2]

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
	
	A = matrix(c(1 - 0.4 * u1, -x[1], -x[2], 1 + 0.2*u2), ncol=2)
	B = matrix(c(1, p[1], -p[2], 1), ncol=2) 
	res =  A %*% p  +  B %*% x + c(-1,0)
}

