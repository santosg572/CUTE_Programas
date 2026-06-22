# y' = t^2 + 2 - y(t-1)
# solucion:
# f(t) = t^2 + 1
#

del1 = .001
n = 1/del1

nn = 10*n-(10-1)

y = rep(0, nn)
y[1:n] = 1

y1 = y[n]
for (i in (n+1):nn){
   y2 = y1 + del1 * (((i-n)*del1)^2 + 2 - y[i-n])
   y1 = y2
   y[i] = y1
}
y = y[n:nn]
ny = length(y)
tt =  del1 * 0:(ny-1)

print(length(y))

print(length(tt))

plot(tt, y, type='l')

yt = tt^2 + 1

points(tt, yt+2, type='l', col='red')
