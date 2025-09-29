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

Res_Equ_Dif_derecha_tao2 <- function(vali= 0, del1=0, ta1=0, ta2=0){
  np = length(ta1)
  yf = rep(0, np)

  y1 = vali
  yf[1] = y1
  
  for (i in 2:np){
    y2 = y1 + del1 * (ta1[i-1]+ta2[i-1])
    yf[i] = y2
    y1 = y2   
  }
  res= yf
}

Res_Equ_Dif_izquierda_tao2 <- function(vali= 0, del1=0, ta1=0, ta2=0){
  np = length(ta1)
  yf = rep(0, np)

  y2 = vali
  yf[np] = y2

  for (i in (np-1):1){
    y1 = y2 - del1 * (ta1[i+1]+ta2[i+1])
    yf[i] = y1
    y2 = y1
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


procesa_drerecha2 <- function(tao1=0,tao2=0, niter=0){
  print('procesa derecha2')
  del = .001
  n = tao2 / del+1
  m = tao1 / del+1
  t = seq(0, tao1, length.out = m)
  yi = rep(1, n)

  tt = c()
  yy = yi

  ni=n-n+1
  mi=n-m+1

  for (i in 1:niter){
    to = (i-1)*tao1 + t 
    tt = c(tt, to)
    y1 = yy[mi:(mi+m)]
    y2 = yy[ni:(ni+m)]
    k = length(yy)
    yi = Res_Equ_Dif_derecha_tao2(yy[k] , del, y1, y2)
    yy = c(yy, yi)
    mi = mi+m
    ni = ni+m
  }
  ret = list(tt, yy)
}

procesa_izquierda2 <- function(tao1=0,tao2=0, niter=0, tf=0){
  print('procesa izquierda2')
  del = .001
  n = tao2 / del+1  
  m = tao1 / del+1
  mt =niter*m - niter

  cat(' m= ',m,' n= ',n, '\n')

  y2 = exp(tf)
  t = tf + seq(0, tao1, length.out = m)  

  yf = rep(y2, n)

  tt = c()
  yy = c(rep(0 ,mt),yf)
  nyy = length(yy)
  ni = nyy
  mi = ni+1-n
  cat(' mi= ',mi,' ni= ',ni, '\n')   
  yini = yy[mi]
  cat ('yini = ', yini, '\n')
  for (i in 1:niter){
    to = t - (i-1)*tao1 
    tt = c(to, tt)
    y1 = yy[mi:mi+m-1]
    y2 = yy[(ni-m):ni]
    yi = Res_Equ_Dif_izquierda_tao2(yini , del, y1, y2)
    yini = yi[1]
    yy = c(yi, yy)
    mi = mi-m+1
    ni = ni-m+1
  }
  ret = list(tt, yy)
}

procesa_izquierda <- function(tao=0, niter=0, tF=0){
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

proc_derecha = 0

if (proc_derecha == 1){
  pp = procesa_drerecha2(.4, .9, 10)
  t = pp[[1]]
  y = pp[[2]]
  nt = length(t)
  ny = length(y)

  y = y[(ny-nt+1):ny]
  plot(t, y, type='l')
} else {
  print('procesa izquierda')

  tf = 5
  pp = procesa_izquierda2(.4, .9, 2, tf)

  t = pp[[1]]
  y = pp[[2]]

  nt = length(t)
  ny = length(y)

  print(t)
  print(y)

  y = y[1:nt]

  plot(t, y, type='l')
}



