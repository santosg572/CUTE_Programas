rm(list=ls())

datos <- read.csv('more2', header=F)
attach(datos)
print(names(datos))
print(length(V1))

x = round(V1,3)

y = matrix(x, ncol=4,  byrow = T)

y = y*1
tabla = data.frame(y)
print(tabla)

#write(tabla, 'datos.csv')


