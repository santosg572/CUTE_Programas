Res_Equ_Dif <- function(del1=0, yi=0){
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

tao = .01
niter = 700

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
  yi = Res_Equ_Dif(del, yi)
  yy = c(yy, yi)
}

plot (tt, yy, type='l')

yt = exp(tt)

points (tt, yt, type='l', col='red')

