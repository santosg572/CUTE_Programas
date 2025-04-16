import sys

#print "test1"
#print sys.argv[0]
#print sys.argv[1]
#print len(sys.argv)

file = sys.argv[1]
#file = input("Introduce el nombre del archivo de directorios: ")

pati = '/home/santosg/Cute_Programas/CUTE_feb1924_NUEVA_CHAMBA/CUTE_Prog_ART_jul1023_chamba_feb1824/fac_TETA0.2_A10.4_B10.42_C10.19_dwx1_0.17_dwx2_0.17_dwp_0.17:b0.2d0.3e0.3'

fil = open(file+'.txt', 'r')
filo = open(file+'.html', 'w')

datos = fil.readlines()
fil.close()

c1 = '''
<!DOCTYPE html>
<html>
<head>
<style>
h1 {
  font-size: 40px;
}

h2 {
  font-size: 30px;
}

p {
  font-size: 20px;
}
</style>
</head>
<body>
'''

c2 = '''
</body>
</html>
'''

filo.write(c1)

k = 1
for ss in datos:
  if len(ss) > 1:
    ss = '<a href="' + pati+ss + '"> Paso' + str(k) + '</a>' 
    ssn = '<p> ' + ss + ' </p>\n'
    filo.write(ssn)
    k = k+1
filo.write(c2)
filo.close()



