c = 1
b = 3
d = 1

t = seq(0, 5, .1)

dd = b^2-4*c

x1 = (-b + sqrt(dd))/2
x2 = (-b - sqrt(dd))/2

y = exp(x1*t) + exp(x2+t) - d/c

plot(t, y, type='l')

n = length(t)

yy = matrix(rep(0, 2*n), ncol=2)

y1 = c(-b,1)
A = matrix(c(-b, 1, -c, 0), ncol=2)
del1 = t[2] - t[1]

for (i in 2:n){
  y2 = y1 + del1*(A %*% y1) - c(d,0)
  yy[i,] = y2
  y1 = y2
}

points(t, yy[,2], type='l', col='red')


