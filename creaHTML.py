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

filin = open('dir.txt', 'r')
datos = filin.readlines()
filin.close()

print(datos)

filon = open('dir.html', 'w')
filon.write(d1)

k=1

for ss in datos:
  ss = ss.replace('\n', '')
  ss1 = '<p> <a href="' + ss + '">' + 'file' + str(k) + '</a> </p>\n'
  filon.write(ss1)
  k = k+1

filon.write(d2)
filon.close()



