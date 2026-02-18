Solucion_sin_retardo <- function(){
   h = .01
   n = (5-1)/h

   t = seq(1, 5, length.out=n)
   x = rep(0,n)

   x[1] = -1
   x1 = -1

   for (i in 2:n){
     x2 = x1 + h * x1^2
     x1 = x2
     x[i] = x1
   } 
   ret = list(t,x)
}

Solucion_UN_retardo <- function(){
   h = .01
   n = (5-1)/h

   t = seq(1, 5, length.out=n)
   x = rep(0,n)

   tao = .5
   nt = tao/h

   xi = rep(-1, nt)
   x = rep(0, n)
   x1 = xi[nt]
   x[1] = x1

   for (i in 2:nt){
     x2 = x1 + h * xi[i-1]*xi[i-1]
     x1 = x2
     x[i] = x1
   }

   x1 = x[nt]
   for (i in (nt+1):n){
     x2 = x1 + h * x[i-nt]*x[i-nt]
     x1 = x2
     x[i] = x1
   }
   ret = list(t, x)
}

Solucion_UN_retardo2 <- function(){
   h = .01
   n = (5-1)/h

   t = seq(1, 5, length.out=n)
   x = rep(0,n)

   tao = .5
   nt = tao/h

   xi = rep(-1, nt)
   x = rep(0, n)
   x1 = xi[nt]
   x[1] = x1

   for (i in 2:nt){
     x2 = x1 + h * x1*xi[i-1]
     x1 = x2
     x[i] = x1
   }

   x1 = x[nt]
   for (i in (nt+1):n){
     x2 = x1 + h * x1*x[i-nt]
     x1 = x2
     x[i] = x1
   }
   ret = list(t, x)
}


xt = Solucion_sin_retardo()
#print(xt)

xtR = Solucion_UN_retardo()

plot(xt[[1]], xt[[2]], type='l')
points(xtR[[1]], xtR[[2]], type='l', col='red', lwd=3)

xtR2 = Solucion_UN_retardo2()

points(xtR2[[1]], xtR2[[2]], type='l', col='blue', lwd=3)

  
