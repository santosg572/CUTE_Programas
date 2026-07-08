# ecuacion  x'=x, con x(0)=1
#

t2=5
del1 = .01

# solucion analitica

t = seq(0, t2, del1)
y = exp(t)
plot(t, y, type='l')

# ================================
# solucion numerica

t = seq(0, t2, del1)
n = length(t)
y = rep(0, n)

y1 = 1
y[1] = y1
for (i in 2:n){
  y2 = y1 + del1*y1
  y1 = y2
  y[i] = y1
}

points(t,y, type='l', col='blue')


#============================

tao = .01
del1 = .001
n = tao/del1+1


t = seq(0,tao,length.out = n)
y = rep(1, n)

nrep = t2/tao
cat('nrep:', nrep, '\n')

tt = t

for (i in 2:nrep){
  tt = c(tt, (i-1)*tao+t[2:n])
}

print('tt')
print(tt)

nt = length(tt)

yy = rep(0,nt)

y1 = y[1]
yy[1] = y1

for (i in 2:n){
  y2 = y1 + del1*y[i]
  yy[i] = y2
  y1 = y2
}

print('yy')
print(yy)

print('y1')
print(y1)

for (i in (n+1):nt){
  y2 = y1 + del1*yy[i-n]
  yy[i] = y2
  y1 = y2
}

print(tt)
print(yy)

print(length(tt))
print(length(yy))

points(tt, yy, type='l', col='red')

