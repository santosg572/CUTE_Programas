tao =.2
del = .2/10

t1 = seq(0,.2,del)
x1 = 1 + t1

dd = t1[2] - t1[1]

t2 = t1+.2 
x2 = 1 - tao^2/2 + t2 + t2^2/2

t = c(t1, t2)
x = c(x1, x2)

print(t)
print(x)

to = seq(0,tao,del)
np = length(to)
yi = rep(1, np)

t = seq(0, 2*del, del)
nT = length(t)

y = rep(0,n)

y1 = yi[np]


