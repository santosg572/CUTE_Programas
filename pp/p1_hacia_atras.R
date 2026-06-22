# y' = t^2 + 2 - y(t-1)
# solucion:
# f(t) = t^2 + 1
#

del1 = .001
n = 1/del1

nn = 10*n-(10-1)

y = rep(0, nn)
y[(nn-n+1):nn] = 100-1

y2 = y[nn-n+1]
for (i in (nn-n):1){
   y1 = y2 - del1 * ((i*del1)^2 + 2 - y[i+n])
   y2 = y1
   y[i] = y2
}
y = y[1:(nn-n)]
ny = length(y)
tt =  del1 * 0:(ny-1)

print(length(y))

print(length(tt))

plot(tt, y, type='l')

#yt = tt^2 + 1

#points(tt, yt+2, type='l', col='red')
