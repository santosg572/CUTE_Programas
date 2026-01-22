import sys
import os

c1 = '''<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>
'''

#<h1>This is a Heading</h1>
#<p>This is a paragraph.</p>

c2 = '''
</body>
</html>
'''

fileo = open('fig.html','w')

if len(sys.argv) > 1:
    print("All arguments:", sys.argv)
    print("First parameter:", sys.argv[1])
else:
    print("No parameters provided.")

path = sys.argv[1]

print(path)

contenido = os.listdir(path)

fileo.write(c1)

for item in contenido:
    print(item)
    im = '<img src="' + path+'/'+item + '" alt="Description of the image">\n'
    fileo.write(im)

fileo.write(c2)
fileo.close()



