h = .01
n = 1/h

t = seq(0, 1, length.out=n)

l01 = -2*t + 2*(exp(2)-1)/(exp(2) +1 )^2 + 5 
x01 = rep(1, n)
u01 = exp(-2)*exp(t+2)/(exp(2) +1) - exp(4)*exp(-1*(t+2))/ (exp(2) +1)

t1 = t+1

x12 = rep(1, n)
u12 = rep(0, n)
l12 = (exp(2*t1-2) - exp(6-2*t1))/(exp(2) + 1)^2 - t1*(4*exp(2)/(exp(2) + 1)^2 + 2) + 4*(exp(2)-1)/(exp(2) + 1)^2 + 6 

print('hola')

t2 = 2+t
x23 = exp(-2)*exp(t2)/(exp(2)+1) + exp(4)*exp(-1*t2)/(exp(2)+1)
u23 = rep(0, n)
l23 = -2*exp(-2)*exp(t2)/(exp(2) +1) + 2*exp(4)*exp(-1*t2)/(exp(2) +1)

tt = c(t, t1, t2)
xx = c(x01, x12, x23)
uu = c(u01, u12, u23)
ll = c(l01, l12, l23)

par(mfrow=c(2,2))
plot(tt, xx, type='l')
plot(tt, uu, type='l')
plot(tt, ll, type='l')
 
