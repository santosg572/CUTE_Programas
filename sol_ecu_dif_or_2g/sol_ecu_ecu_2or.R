# b^2 - 4c

c = 1
d = 1
b = 4*c-5

t2 = 10
t = seq(0, t2, .01)

dd = as.complex(b^2-4*c)

r1 = (-b + sqrt(dd))/2
r2 = (-b - sqrt(dd))/2

print(r1)
print(r2)

num = -r1*(1+d/c)
den = r2-r1

B = num/den
A = -r2*B/r1

y = A*exp(r1*t) + B*exp(r2*t) - d/c

print(y[1])

plot(t, y, type='l')

n = length(t)

yy = matrix(rep(0, 2*n), ncol=2)

y1 = c(0,1)
A = matrix(c(-b, 1, -c, 0), ncol=2)
del1 = t[2] - t[1]
yy[1,] = y1
for (i in 2:n){
  y2 = y1 + del1*(A %*% y1 - c(d,0))
  yy[i,] = y2
  y1 = y2
}

yc = yy[,2]
print(yc[1])
points(t, yc+.01, type='l', col='red')


