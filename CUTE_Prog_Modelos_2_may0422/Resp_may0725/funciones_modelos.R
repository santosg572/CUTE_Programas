funX_abr2022 <- function(x,u){
	x1 =  (1-.4*u[1]) * x[1] - x[1]*x[2]
	x2 = x[2]*x[1] + (-1-.2*u[2])*x[2]
	res = list(x1, x2)
}


funP_abr2022 <- function(x,p,u){
	p1 = x[1] - p[1] + p[1]*x[2] + .4*p[1]*u[1] - p[2]*x[2] 
	p2 = x[2] + p[2] + p[1]* x[1] - p[2]*x[1] + .2 *p[2]*u[2]
	res = list(p1, p2)
}

funX_ART <- function(x=0,u=0){
    x1 = (1-.4*u[1])*x[1] - x[1]*x[2]
    x2 = x[2]*x[1] +(-1-.2*u[2])*x[2]
	res = list(x1, x2)
}

funP_ART <- function(x=0,p=0,u=0){
    p1 = (1-.4*u[1])*p[1] - 2*x[2]*p[2] + x[1]- 1
    p2 = -x[1]*p[1] + (1+.2*u[2])*p[2] + x[1]*p[1] + x[2]
	res = list(p1, p2)
}



Calu1u2 <- function(x=0, p=0){
	u1 <- -.4*p[1]*x[1]
	u2 <- -.2*p[2]*x[2]

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

Calu1u2u3 <- function(x=0, p=0){
	u1 <- -.4*p[1]*x[1]
	u2 <- -.4*p[2]*x[2]
	u3 <- -.2*p[3]*x[3]

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
	if (u3 < 0){
		u3 = 0
	} else if (u3 > 1){
		u3 = 1
	}

	res = c(u1, u2, u3)
}


funX_ART2 <- function(x=0,u=0){
    x1 = x[1]*(1 - .2*x[2] - .2*x[3] - .4 *u[1])
    x2 = x[2]*(1 - .2*x[1] - .2*x[3] - .4 *u[2])
    x3 = x[3]*(-1 + x[1] + x[2] -.2*u[3])
	res = list(x1, x2, x3)
}

funP_ART2 <- function(x=0,p=0,u=0){
    p1 = x[1] + p[1] * (-1 + .2*x[2] + .4 *u[1]+x[3]) + p[2]*x[2] -p[3]*x[3]
    p2 = x[2] + p[2]*(-1  + .2*x[1] +  .4 *u[2] + x[3]) - p[3]*x[3] +p[1]*x[1]
    p3 = x[3]+  p[3]*(1+.2*u[3] - x[2] - x[1])+p[1]*x[1]+p[2]*x[2]
	res = list(p1, p2, p3)
}


