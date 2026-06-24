rm(list=ls())

# y' = -t^2 - 2 + y(t+1)
# solucion:
# f(t) = t^2 + 1
#

del1 = .001
n = 1/del1 +1

print(n)
nrep=10
nn = nrep*n-(nrep-1)

y = rep(0, nn)
y[(nn-n+1):nn] = (nrep-1)^2+1

print(y)
print(n)
print(nn)
y2 = y[nn-n+1]
print(y2)
for (i in (nn-n):1){
   print(paste('-------------',i, i+n-1))
   t = (i-1)*del1
   print(t)
   y1 = y2 - del1 * (-1*t^2 - 2 + y[i+n-1])
   y2 = y1
   print(y1)
   y[i] = y1
}

y = y[1:(nn-n+1)]
print(y)
ny = length(y)
print(ny)

tt =  del1 * (0:(ny-1))

print(length(y))

print(length(tt))

plot(tt, y, type='l')

yt = tt^2 + 1

points(tt, yt, type='l', col='red')
