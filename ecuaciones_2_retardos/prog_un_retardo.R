Res_Equ_Dif_derecha <- function(del1=0, yi=0){
  np = length(yi)
  yf = rep(0, np)

  y1 = yi[np]
print(np)
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
  ni = (t2-t1) / del

  t = seq(t1, t2, length.out = ni+1)
  yi = rep(1, ni+1)

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

plot(pp[[1]], pp[[2]], type='l')

mt = exp(pp[[1]])

points (pp[[1]], mt, type='l', col='red')


