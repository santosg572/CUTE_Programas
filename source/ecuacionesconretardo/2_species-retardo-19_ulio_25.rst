Ecuaciones de Lotka-Volterra para dos especies con retardo
==========================================================

Versión 1

July 19, 2025

.. math::

   \begin{matrix}
   \dot{x}_1(t) = & x_1(t −20) −x1 (t −20)_2 (t −20) −0.4x_1 (t −20)u_1(t −20)  \\
   \dot{x}_2(t) = & -x_2(t − 20)  __x1 (t −2_x_)2 (t − - −__.2x 2 (t −_ 0)u 2 (t− 20)&  \\
   \end{matrix}

con las condiciones:

con las condiciones:

x 1 (t) = x 2 (t) = 1, −20 ≤ t ≤ 0

(2)

u 1 (t) = u 2 (t) = 0, −20 ≤ t ≤ 0

(3)

Denotando:

y 1 (t) = x 1 (t − 20),

y 2 (t) = x 2 (t − 20),

v 1 (t) = u 1 (t − 20),

v 2 (t) = u 2 (t − 20),

el Hamiltoniano aumentado tiene la forma:

H(t, x, y, u, v) = x 1 2 (t)+x 2 2 (t)+u 1 2 (t)+u 2 2 (t)+p 1 (t)y 1 (t)v 1 (t)+p 2 t)y 2 (t)v 2 (t) (4)

En cuanto al sistema adjunto, para t ∈ [0, 40], se tiene

p˙ 1 (t) = −x 1 (t) − χ (t) [0,40] (t + 20) − p 1 (t + 20)x 2 (t − 20) + p 2 (t + 20)x 2 (t − 20) − 0.4p 1 (t + 20)u 1 (t − 20) p1  
( )

p˙ 2 (t) = x 2 (t) − χ (t) [0,40] (t + 20) + p 2 (t + 20)x 1 (t − 20) − p 1 (t + 20)x 1 (t − 20) − 0.2p 2 (t + 20)u 2 (t − 20) p2  (

(5)

p 1 (60) = 0.5,

(6)

p 1 (60) = 0.7,

(7)


0 ≤ u 1 (t) ≤ 1,

(8)

0 ≤ u 2 (t) ≤ 1,

(9)

u 1 (t) = −0.4p 1 (t + 20)x 1 (t − 20)

(10)

u 2 (t) = −0.2p 2 (t + 20)x 2 (t − 20)



