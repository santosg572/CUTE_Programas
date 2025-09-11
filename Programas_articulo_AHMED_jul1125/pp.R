alfa1 = 0.01
alfa2 = 0.09
beta = 0.09
d = 10^(-4)
gama = 0.01
epsi = 0.4
D = 9*10^5
tao1 = 2
tao2 = 3

h = .001
m1 = tao1/h
m2 = tao2/h

S0 = 15*10^(15)
I0 = 30
R0 = 0

A  = 90
B = 1200
E = 20
c1 = 10^9
c2 = 10^9


h = 10^(-4)

t0 = 0
t1 = 80
n = 80/h

##### Paso1------------

m = max(m1, m2)

S1 = rep(0,m)
I1 = rep(0,m)
R1 = rep(0,m)
u1 = rep(0,m)
v1 = rep(0,m)

l12 = rep(0,m)
l22 = rep(0,m)
l32 = rep(0,m)

S2 = rep(0,n)
I2 = rep(0,n)
R2 = rep(0,n)

for (i in 1:(n-1)){
  S[i+1] = S[i] + h*(D - beta * S[i]*I[i]/(1 + alfa1*S[i] + alfa2 * I[i]) - d*S[i] - u[i]*S[i])


  

