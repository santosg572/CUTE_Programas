Solucion de Ecuación Diferencial Ordinaria de 1er orden
=======================================================

**EJEMPLO 1**

Considerar la ecuación

.. math::

   x' = x

   x(0) = 1

Solución:

.. math::

   x(t) = e^t
  
**CON RETARDO**

.. math::  

   x' = x(t-\tau)

   x(t) = 1 \text{ con } t \in [-\tau, 0]

Solución:

1) Para :math:`t \in [0, \tau]`

.. math::

   x(t) = t + 1

**EJEMPLO 2**

Considerar la ecuación

.. math:: 

   y' = \cos(t), y(0) =1

Solución de la ecuación

.. math::

   y(t) = \sin(t) + 1

**CON RETARDO**

.. math::

   y' = \cos(t-\tau), y(0) =1

