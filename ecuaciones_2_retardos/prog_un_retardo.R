Res_Equ_Dif_derecha <- function(del1=0, yi=0){
  np = length(yi)
  yf = rep(0, np)

  y1 = yi[np]
  yf[1] = y1

  for (i in 2:np){
    y2 = y1 + del1 * yi[i-1]
    yf[i] = y2
    y1 = y2
  }
  res= yf
}


Res_Equ_Dif_izquierda <- function(del1=0, yi=0){
  np = length(yi)
  yf = rep(0, np)

  y2 = yi[1]
  yf[np] = y2

  for (i in (np-1):1){
    y1 = y2 - del1 * yi[i+1]
    yf[i] = y1
    y2 = y1
  }
  res= yf
}


procesa_drerecha <- function(tao=0, niter=0){
  t1 = 0
  t2 = tao
  del = .001
  ni = (t2-t1) / del + 1

  t = seq(t1, t2, length.out = ni)
  yi = rep(1, ni)

  tt = c()
  yy = c()

  for (i in 1:niter){
    to = (i-1)*tao + t 
    tt = c(tt, to)
    yi = Res_Equ_Dif_derecha(del, yi)
    yy = c(yy, yi)
  }
  ret = list(tt, yy)
}

procesa_drerecha2 <- function(valini=0, tao=0, tf=0){   
  np = 11
  
  to = seq(0, tao, length.out = np)
  yi = rep(1, np)
    
  del = to[2]-to[1]
  t = seq(0, tf, del)
  niter = length(t)  
  
  print(del)
  print(niter)   
  y1 = yi[np]
  yy = c(y1)
  for (i in 2:np){
       y2 = y1 + del*yi[i]
       y1 = y2
       yy = c(yy, y1)
  }

  y1 = yy[np]
  print(y1)

  for (i in (np+1):niter){
       y2 = y1 + del*yy[i-np]
       y1 = y2
       yy = c(yy, y1)
  }
  ret = list(t, yy)
}

procesa_izquierda2 <- function(valini=0, tao=0, tf=0){
  np = 11

  to = seq(0, tao, length.out = np)
  yF = exp(tF)
  yi = rep(yF, np)

  del = to[2]-to[1]
  t = seq(0, tf, del)
  niter = length(t)

  yy = rep(0, niter)

  y2 = yi[1]
  yy[niter] = y2
 
  k = niter-1
  for (i in 2:np){
       y1 = y2 - del*yi[i]
       y2 = y1
       yy[k] = y2
       k = k-1
  }

  for (i in k:1){
       y1 = y2 - del*yy[i-np]
       y1 = y2
       yy = c(yy, y1)
  }
  ret = list(t, yy)
}


procesa_izquierda <- function(tao=0, niter=0, tF){
  t2 = 0
  t1 = -tao
  del = .001
  ni = (t2-t1) / del

  t = seq(t1, t2, length.out = ni+1)
  yF = exp(tF)
  yi = rep(yF, ni+1)
  
  tt = c()
  yy = c()  
  
  tA = tF + t

  for (i in 1:niter){
    tt = c(tA, tt)
    tA = tA - tao
    yi = Res_Equ_Dif_izquierda(del, yi)
    yy = c(yi, yy)
  }
  ret = list(tt, yy)
}

pp = procesa_izquierda(tao=.2, niter=70, 20)

#pp = procesa_drerecha(tao=.2, niter=70)

plot(pp[[1]], pp[[2]], type='l')

mt = exp(pp[[1]])

points (pp[[1]], mt, type='l', col='red')

#w = procesa_drerecha2(1, .05, 14)

#points(w[[1]], w[[2]], type='l', col='blue')
