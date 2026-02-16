Ecuaciones de Lotka-Volterra para dos especies con retardo
==========================================================

Versión 1

July 13, 2025

x˙ 1 (t) = x 1 (t − 20) − x 1 (t − 20)x 2 (t − 20) − 0.4x 1 (t − 20)u 1 (t − 20)

x˙ 2 (t) = −x 2 (t − 20) + x 1 (t − 20)x 2 (t − 20) − 0.4x 2 (t − 20)u 2 (t − 20), (1)

con las condiciones:

x 1 (t) = x 2 (t) = 1, −20 ≤ t ≤ 0

(2)

u 1 (t) = u 2 (t) = 0, −20 ≤ t ≤ 0

(3)

En cuanto al sistema adjunto, para t ∈ [0, 40], se tiene

p˙ 1 (t) = −x 1 (t) − χ (t) [0,40] (t + 20) + p 1 (t + 20)x 2 (t − 20) + p 2 (t + 20)x 2 (t − 20) − 0.4p 1 (t + 20)u 1 (t − 20) p1  ( 
)

p˙ 2 (t) = −x 2 (t) − χ (t) [0,40] (t + 20) + p 2 (t + 20)x 1 (t − 20) − p 1 (t + 20)x 1 (t − 20) − 0.4p 2 (t + 20)u 2 (t − 20) p2  
( )

(4)

u 1 (t) = p 1 (t + 20)x 1 (t − 20)

(5)

u 2 (t) = p 2 (t + 20)x 2 (t − 20)

Para t ∈ [40, 60], u 1 (t) = u 2 (t) = 0, entonces el sistema adjunto satisface : (6)

p˙ 1 (t) = −x 1 (t)

p˙ 2 (t) = −x 2 (t),


