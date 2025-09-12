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

S0 = 15*10^(5)
I0 = 30
R0 = 0

A  = 90
B = 1200
E = 20
c1 = 10^9
c2 = 10^9


##### Paso1------------

S0 = 15*10^5
I0 = 30
R0 = 0

S1 = rep(S0, m1)
I1 = rep(I0, m1)
u = rep(0, m1)
v = rep(0, m1)
S = rep(0, m1)
I2 = rep(0, m1)

I2[1] = 30
i1 = I2[1]

for (i in 2:m1){
  i2 = i1 + h*(beta * S1[i-1]*I1[i-1]/(1 + alfa1 * S1[i-1] + alfa2 * I1[i-1]) - (gama + d + epsi)*i1 - v[i-1]* I1[i-1])
  I2[i] = i2
  i1 = i2
}

S2 = rep(0,m1)
S2[1] =S1[1]
s1 = S2[1]

for (i in 2:m1){
  s2 = s1 + h*(D - beta*s1*I2[i-1]/(1+alfa1*s1+alfa2*I2[i]) - d*s1 - u[i-1]*s1)
  S2[i] = s2
  s1 = s2
}

R = rep(0,m1)
R[1] = R0
r1 = R[1]

for (i in 2:m1){
  r2 = r1 + h*(gama * I2[i-1] - d*r1 + u[i-1]*S2[i-1] + v[i-1]*I2[i-1])
  R[i] = r2
  r1 = r2
}

par(mfrow=c(2,2))
plot(S2, type='l')  
plot(I2, type='l')
plot(R, type='l')
