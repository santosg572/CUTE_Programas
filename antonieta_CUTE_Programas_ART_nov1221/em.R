library(devEMF)

emf("bar2.emf", , emfPlus = FALSE)
# produce the desired graph(s)

barplot(c(1,3,2,4))

dev.off() #turn off device and finalize file
