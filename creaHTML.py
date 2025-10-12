import sys

d1='''
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>
'''

d2 = '''
</body>
</html>
'''

file = sys.argv[1]
filin = open(file+'.txt', 'r')
datos = filin.readlines()
filin.close()

print(datos)

filon = open(file+'.html', 'w')
filon.write(d1)

pat = datos[0]
pat = pat.replace('\n','')

datos = datos[1:]

for ss in datos:
  ss = ss.replace('\n', '')
  ss1 = '<p> <a href="' + pat + '/' + ss + '">' + ss + '</a> </p>\n'
  filon.write(ss1)

filon.write(d2)
filon.close()



