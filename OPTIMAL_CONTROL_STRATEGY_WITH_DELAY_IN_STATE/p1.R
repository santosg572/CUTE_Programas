alfa1 = 0.01
alfa2 = 0.09
beta = 0.09
d = 10^(-4)
gama = 0.01
epsi = 0.4
D = 9*10^5
tao1 = 2
tao2 = 3

S0 = 15*10^5
I0 = 30
R0 = 0
A = 90
B = 1200
E = 20
c1 = 10^9
c2 = 10^^9

t0 = 0
tf = 80
h = .01


n1 = tao1/h
n2 = tao2/h
n = max(n1, n2)

S = rep(S0, n)
I = rep(I0, n)
R = rep(R0, n
u = rep(0, n)
v = rep(0,n)
lan1 = rep(0,n)
lan2 = rep(0,n)
lan3 = rep(0,n)

s1 = S[n]
i1 = I[n]
r1 = R[n]

Integral <- function(h=0, xi=0, S=0, I=0, R=0, D=0, beta=0, alfa1=0, alfa2=0, d=0, gama=0, epsi=0){
  n2 = length(S)
  ss = seq(0, length.out = n)
  ii = seq(0, length.out = n)
  rr = seq(0, length.out = n)
  ss[1] = xi[1]
  ii[1] = xi[2]
  rr[1] = xi[3]
  s1 = ss[1]
  i1 = ii[1]
  r1 = rr[1] 

  for (i in 2:n){
    s2 = s1 + h * 


S = rep(S0, m)
I = rep(I0, m)
R = rep(R0, m)
u = rep(0, m)
v = rep(0, m)

lan1 = rep(0, m)
lan2 = rep(0, m)
lan3 = rep(0, m) 

h = .01


for i in 1:m

