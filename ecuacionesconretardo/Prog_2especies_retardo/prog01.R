# https://www.w3schools.com/r/r_operators.asp

Gx1 <- function(x=0){
   ret = matrix(c(1, x[2], -1*x[1], -1), ncol=2)
}

Gx2 <- function(u=0){
   ret = matrix(c(0.4*u[1], 0 , 0, 0.2*u[2]), ncol=2)
} 

Gp1 <- function(x=0){
   ret = matrix(c(1, -1*x[1], x[2], -1), ncol=2)
}

Gp2 <- function(x=0, u=0){
   ret = matrix(c(x[2] + 0.4*u[1], 0 , 0, -1*x[1] + 0.2*u[2]), ncol=2)
}

ChecaU <- function(u=0){
#   print(u)
   u1 = u[1]
   u2 = u[2]
   if (u[1] < 0){
     u1 = 0
   } else if (u[1] > 1){
     u1 = 1
   }
   if (u[2] < 0){
     u2 = 0
   } else if (u[2] > 1){
     u2 = 1
   }
   res = c(u1, u2)
}

del = 10^(-4)

t1 = 0
t2 = 60

np = round((t2-t1)/del) + 1

t = seq(t1, t2, length.out = np)

del = t[2] - t[1]

p = matrix(rep(1,2*np), ncol=2)

numiter = 10

nom = 'fig_'

for (k in 1:numiter){
  ss = paste('iteracion', k)
  print(paste('---------------------', ss,  ' --------------------------'))

  x = matrix(rep(0,2*np), ncol=2)

  x1 = c(1,1)
  x[1,] = x1

#  print('----------------------- 1er for---------------------')
  for (i in 2:np){
    uu = p[i-1,]*x1
    x2 = x1 + del * (Gx1(x1) %*% x1 - Gx2(uu) %*% x1)
    x[i,] = x2
    x1 = x2
  }

#  print('--------------------- termina el 1 ford-------------------')

  u = matrix(rep(0,2*np), ncol=2)

  for (i in 1:np){
    uu = p[i,] * x[i,]
    res = ChecaU(uu)
    u[i,] = uu
  }
 # print('----------------------- 2er for---------------------')

  p = matrix(rep(0,2*np), ncol=2)

  p2 =  c(.7, .5)
  p[np,] = p2

  for (i in (np-1):1){
    xx = x[i+1,]
    uu = u[i+1,]
    p1 = p2 + del* (-1*c(-xx[1], x[2]) + Gp1(xx) %*% p2 - Gp2(xx, uu) %*% p2)
    p[i,] = p1
    p2 = p1
  }

#  print('----------------------- termina 2o for---------------------')

  if (k < 10){
    file = paste(nom,'0',k, '.jpeg', sep='')
  } else {
    file = paste(nom,k, '.jpeg', sep='')
  }

  jpeg(file=file)

  par(mfrow=c(3,2))

  plot(x[,1], type='l', main=file)

  plot(x[,2], type='l')

  plot(p[,1], type='l')
  
  plot(p[,2], type='l')

  plot(u[,1], type='l')
 
  plot(u[,2], type='l')
  dev.off()
}
