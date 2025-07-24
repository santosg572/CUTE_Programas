rm(list=ls())

# lo principal que cambie del programa anterior fue que
# el contro -u- lo reemplace por -p- al inicio del programa

source('CreaFolder.R')
source('SolucionXPU.R')
source('SolucionPPU.R')
source('gx.R')
source('gw.R')
source('Calu1u2.R')
   
fac= 12

n = round(fac *5001)
t = seq(0,fac*5, length.out = n)
del = t[2] - t[1]

cc = rep(0, n)
#pp =  matrix(c(t, cc), ncol=2)
#pp =  matrix(rep(c(0,1), c(n,n)), ncol=2)
pp =  matrix(rep(c(1, 0), c(n,n)), ncol=2)

#pp =  1*matrix(rep(c(1,1), c(n,n)), ncol=2)
dwx1 = 0.0
dwx2 = 0.0
dwp =  0.0
fig = 'fig_'
prefijo = paste('fac_',fac,'_p_1_0_dwx1_',dwx1,'_dwx2_',dwx2,'_dwp_',dwp, sep='')
pat = getwd()

CreaFolder(prefijo)

for (jj in 1:40){
	cat('iter= ', jj, '\n')
	fig_name = paste(fig, prefijo, '_', jj, '.jpg', sep='')
	
	jpeg(filename = file.path(pat, prefijo,fig_name))
	
	R <- SolucionXPU(del, pp, wx1=dwx1, wx2=dwx2)
	
	par(mfrow = c(3,3))
	plot(t, R$xx[,1], type='l', main=paste('Iter-', jj, sep=''))
	plot(t, R$xx[,2], type='l')
	plot(R$xx[,1], R$xx[,2], type='l')
	
	plot(t, R$uu[,1], type='l', main=paste('Iter-', jj, sep=''))
	plot(t, R$uu[,2], type='l')
	plot(R$uu[,1], R$uu[,2], type='l')
	
	pp <- SolucionPPU(del, R$xx, R$uu, wp=dwp)	
		
	plot(t, pp[,1], type='l', main=paste('Iter-', jj, sep=''))
	plot(t, pp[,2], type='l')
	plot(pp[,1], pp[,2], type='l')
	dev.off()
}
