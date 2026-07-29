c1 = '''<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
<head>
<title>Mathedemo</title>
<style>
    p {
      font-size: 25px;
    }
  </style>
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}});
</script>
<script type="text/javascript"
  src="http://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
</head>

<body>
'''

texto = '''
<h2> Problema a resolver: </h2>

<p> Solución de la ecuación diferencial con retardo:

<p>
$$
x' = x(t-\\tau) \\text{ para } \\tau < t \\leq 0
$$
</p>
'''

c2 = '''
</body>
</html>
'''
fil2 = open('ecu2_1.R','r')
dd = fil2.readlines()
print(dd)

file = 'prueba.html'
fil = open(file, 'w')

fil.write(c1)
fil.write(texto)
fil.write('<img src="ecu2_1.png" alt="A descriptive summary of the image" width="500" height="300">')

fil.write('<p>Este es un texto normal y <mark>este texto está resaltado</mark>.</p>')
fil.write('<p>Aquí usamos <strong>mucha importancia</strong> y aquí <em>énfasis suave</em>.</p>')

fil.write('<p>')

for ss in dd:
  ss=ss.replace('\n', '')
  ss1 = ss+'<wbr>'
  print(ss1)
  fil.write(ss1)

fil.write('</p>')

fil.write(c2)
fil.close()


