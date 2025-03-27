a = 1
alfa = 1/2
tao = 2

n=10

t = seq(-2,0, length.out=n)

TT = t

y = rep(1, n)

t = t+2

TT = c(TT, t[2:10])

y1 = y[10]

T = t[2:10]

del = t[2] - t[1]

for (tt in T){
  y2 = y1 + del*alfa*a
  y = c(y, y2)
  y1 = y2
}

#--------------

t = t+2

TT = c(TT, t[2:10])

n = length(y)

y1 = y[n]

T = t[2:10]

del = t[2] - t[1]

for (tt in T){
  y2 = y1 + del*alfa*a
  y = c(y, y2)
  y1 = y2
}


print(length(TT))
print(length(y))

plot(TT, y)




