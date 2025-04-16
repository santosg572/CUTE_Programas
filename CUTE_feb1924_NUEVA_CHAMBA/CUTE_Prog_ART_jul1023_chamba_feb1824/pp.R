
rm(list=ls())

source('funciones_M.R')

t1 = 0
t2 = 50
del1 = .1
t = seq(t1, t2, del1)
t0 = 2.5

np1 = length(t)
y = rep(0, np1)

y[1] = 2.5
y1 = 2.5

for (i in 2:np1){
  y2 = y1 + del1*y1*(0.8 -.2*y1)
  y[i] = y2
  y1 = y2	
}

parpois = 0.4
ss = funcion_poisson(60, parpois)
print(ss)

plot(t, y, type='l', ylim=c(0,6))





