Solucion de Ecuación Diferencial Ordinaria de 2er orden
=======================================================


1) Dada la ecuación difdrencial:

.. math::

   x'' + b x' + cx + d = 0

con condiciones iniciales :math:`x(0) = x_0` y :math:`x'(0) = x_1`
encontrar su solución.

2) Soluciones particulales de :math:`x'' + b x' + cx = 0`

Consideremos la ecuación :math:`x^2+bx+c=0`

La soluciones de esta ecuacion son:

.. math::

   r_{1,2} = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}

Luego la solucion de la ecuación (2) es

.. math::

   y(t) = A e^{r_1t} + B e^{r_2t}

Luego la solución general de la ecuación 1 es:

.. math::

   y(t) = A e^{r_1t} + B e^{r_2t} - \frac{d}{c}

Establescamos las condiciones iniciales y(0) = 1 y y'(0) = 0

Lugo obtenemos:

.. math::

   y(0) = A + B - \frac{d}{c} = 1

   y'(0) = Ar_1 + Br_2 = 0

entonces

.. math::

   -Ar_1 - Br_1 = -r_1(1 + \frac{d}{c})

   Ar_1 + Br_2 = 0

luego:

.. math::

   B = \frac{-r_1(1 + \frac{d}{c})}{r_2-r_1}

   A = -\frac{r_2}{r_1} B

**Solución analítica**

.. math::

   x_1 = x
   
   x_2 = x'

entonces

.. math::

   x'_2 + bx_2 + cx_1 + d = 0

   x'_1 = x_2

Luego:

.. math::

   x'_2 = -bx_2 - cx_1 - d

   x'_1 = x_2

Luego

.. math::

   \left( \begin{matrix}
   x'_2\\
   x'_1
   \end{matrix} \right) = 
      \left( \begin{matrix}
   -b & -c\\
   1 & 0
   \end{matrix} \right) 
   \left( \begin{matrix}
   x_2\\
   x_1
   \end{matrix} \right) +
   \left( \begin{matrix}
   -d\\   
   0
   \end{matrix} \right)=


**EJEMPLO**

.. math::

    x''-x'+ x+ 1 =0 \text{ condiciones iniciales } x(0) = 1, x'(0)=0




