t1 = '''
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>
'''

#<h1>This is a Heading</h1>
#<p>This is a paragraph.</p>

t2 = '''
</body>
</html>
'''

filin = open('dir.txt', 'r')
datos = filin.readlines()
filin.close()

filon = open('imagenes.html', 'w')

filon.write(t1)

for ss in datos:
  im = '<img src="' + ss + '" alt="Italian Trulli">'
  filon.write(im)

filon.write(t2)

filon.close()



