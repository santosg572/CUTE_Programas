rm(list=ls())

# lo principal que cambie del programa anterior fue que
# el contro -u- lo reemplace por -p- al inicio del programa

source('CreaFolder.R')
source('SolucionXPU_3.R')
source('SolucionPPU_3.R')
source('funciones_modelos.R')
   
fac= 12

n = round(fac *5001)
t = seq(0,fac*5, length.out = n)
del = t[2] - t[1]

cc = rep(0, n)
#pp =  matrix(c(t, cc), ncol=2)
#pp =  matrix(rep(c(0,1), c(n,n)), ncol=2)
pp =  matrix(rep(c(1, 0, 0), c(n,n, n)), ncol=3)

#pp =  1*matrix(rep(c(1,1), c(n,n)), ncol=2)
param = matrix(c(.15, .15, .15, 12, .1,.1,.1,26, .01,.01,.1,12, .04,.01,.15,24, .07,.03,.05,18, 0, 0, 0, 25), ncol=6)

m = 6
dwx1 = param[1,m]
dwx2 = param[2,m]
dwp =  param[3,m]
kk =   param[4,m]


fig = 'fig_'
prefijo = paste('fac_',fac,'_p_1_0_dwx1_',dwx1,'_dwx2_',dwx2,'_dwp_',dwp, sep='')
pat = getwd()

CreaFolder(prefijo)

for (jj in 1:40){
	cat('iter= ', jj, '\n')
	
	R <- SolucionXPU_3(del, pp, wx1=dwx1, wx2=dwx2)
	
	if (jj == kk){
		fig_nametX1 = paste(fig, prefijo, '_', jj,'_tX1_',kk, '.emf', sep='')
		jpg(file = file.path(pat, prefijo,fig_nametX1), emfPlus = FALSE)
		par(mai=c(1,1,.5,.5))
		plot(t, R$xx[,1], type='l',xlab='t', ylab='X1',cex.axis=2, cex.lab=2)
		dev.off()

		fig_nametX2 = paste(fig, prefijo, '_', jj,'_tX2_',kk, '.emf', sep='')
		emf(file = file.path(pat, prefijo,fig_nametX2), emfPlus = FALSE)
		par(mai=c(1,1,.5,.5))
		plot(t, R$xx[,2], type='l',xlab='t', ylab='X2',cex.axis=2, cex.lab=2)
		dev.off()

		fig_nameX1X2 = paste(fig, prefijo, '_', jj,'_X1X2_',kk, '.emf', sep='')
		emf(file = file.path(pat, prefijo,fig_nameX1X2), emfPlus = FALSE)
		par(mai=c(1,1,.5,.5))
		plot(R$xx[,1], R$xx[,2], type='l',xlab='X1', ylab='X2',cex.axis=2, cex.lab=2)
		dev.off()
		
		fig_nametU1 = paste(fig, prefijo, '_', jj,'_tU1_',kk, '.emf', sep='')
		emf(file = file.path(pat, prefijo,fig_nametU1), emfPlus = FALSE)
		par(mai=c(1,1,.5,.5))
		plot(t, R$uu[,1], type='l', xlab='t', ylab='u1',cex.axis=2, cex.lab=2)
		dev.off()
		
		fig_nametU2 = paste(fig, prefijo, '_', jj,'_tU2_',kk, '.emf', sep='')
		emf(file = file.path(pat, prefijo,fig_nametU2), emfPlus = FALSE)
		par(mai=c(1,1,.5,.5))
		plot(t, R$uu[,2], type='l', xlab='t', ylab='u2',cex.axis=2, cex.lab=2)
		dev.off()
	}
	
	pp <- SolucionPPU_3(del, R$xx, R$uu, wp=dwp)	

	if (jj == kk){
		fig_nametP1 = paste(fig, prefijo, '_', jj,'_tP1_',kk, '.emf', sep='')
		emf(file = file.path(pat, prefijo,fig_nametP1), emfPlus = FALSE)
		par(mai=c(1,1,.5,.5))
		plot(t, pp[,1], type='l', xlab='t', ylab='p1',cex.axis=2, cex.lab=2)
		dev.off()

		fig_nametP2 = paste(fig, prefijo, '_', jj,'_tP2_',kk, '.emf', sep='')
		emf(file = file.path(pat, prefijo,fig_nametP2), emfPlus = FALSE)
		par(mai=c(1,1,.5,.5))
		plot(t, pp[,2], type='l', xlab='t', ylab='p2',cex.axis=2, cex.lab=2)
		dev.off()
	}	
}
