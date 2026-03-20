Optimal control problems with delays in state and control variables subject to mixed control–state constraints
==============================================================================================================

2008

Optimal control problems with delays in state and control variables are studied. Constraints are imposed as mixed control–state inequality 
constraints. Necessary optimality conditions in the form of Pontryagin’s minimum principle are established. The proof proceeds by 
augmenting the delayed control problem to a nondelayed problem with mixed terminal boundary conditions to which Pontryagin’s minimum 
principle is applicable. Discretization methods are discussed by which the delayed optimal control problem is transformed into a 
large-scale nonlinear programming problem. It is shown that the Lagrange multipliers associated with the programming problem provide a 
consistent discretization of the advanced adjoint equation for the delayed control problem. An analytical example and numerical examples 
from chemical engineering and economics illustrate the results. 

Se estudian problemas de control óptimo con retardos en las variables de estado y control. Se imponen 
restricciones como desigualdades mixtas de control y estado. Se establecen condiciones necesarias de optimalidad 
en la forma del principio del mínimo de Pontryagin. La demostración procede ampliando el problema de control con 
retardo a un problema sin retardo con condiciones de contorno terminales mixtas, al cual se aplica el principio 
del mínimo de Pontryagin. Se analizan métodos de discretización mediante los cuales el problema de control óptimo 
con retardo se transforma en un problema de programación no lineal a gran escala. Se demuestra que los 
multiplicadores de Lagrange asociados al problema de programación proporcionan una discretización consistente de 
la ecuación adjunta avanzada para el problema de control con retardo. Un ejemplo analítico y ejemplos numéricos 
de ingeniería química y economía ilustran los resultados.


**1. INTRODUCTION**

Differential control systems with delays in state or control variables play an important role in the modelling of real-life phenomena in 
various ﬁelds of applications. Many papers have been devoted to delayed (other terminology: time lag, retarded, hereditary) optimal 
control problems and the derivation of necessary optimality conditions. Let us brieﬂy review some papers concerning different classes of 
control problems. An introduction to time delay control problems can be found in Oˇguzt¨oreli [ 1 ] . Kharatishvili [ 2 ] was ﬁrst to 
provide a maximum principle for optimal control
problems with a constant state delay. In [ 3 ] , he gave similar results for control problems with pure control delays. Halany [ 4 ] proves 
a maximum principle for optimal control problems with multiple constant delays in state and control variables that, however, are chosen to 
be equal for state and control. Similar results were obtained by Ray and Soliman [ 5 ] . Guinn [ 6 ] sketches a simple method for obtaining 
necessary conditions for control problems with a constant delay in the state variable. He suggests to augment the delayed control problem 
that yields a higher-dimensional undelayed control problem to which the standard maximum principle is applicable. Banks [ 7 ] derives a 
maximum principle for control systems with a time-dependent delay in the state variable. Delays in the control are admitted for systems 
linear in the control variable. Colonius and Hinrichsen [ 8 ] provide a uniﬁed approach to control problems with delays in the state 
variable by applying the theory of necessary conditions for optimization problems in function spaces. All articles mentioned so far do not 
consider general control or state inequality constraints.

Los sistemas de control diferencial con retardos en las variables de estado o de control desempeñan un papel 
importante en el modelado de fenómenos de la vida real en diversos campos de aplicación. Muchos artículos se han 
dedicado a problemas de control óptimo con retardo (otra terminología: retardo de tiempo, retardado, hereditario) 
y a la derivación de condiciones necesarias de optimalidad. Revisemos brevemente algunos artículos sobre 
diferentes clases de problemas de control. Una introducción a los problemas de control con retardo de tiempo se 
puede encontrar en Oˇguzt¨oreli [ 1 ]. Kharatishvili [ 2 ] fue el primero en proporcionar un principio de máximo 
para problemas de control óptimo con un retardo de estado constante. En [ 3 ] , dio resultados similares para 
problemas de control con retardos de control puros. Halany [ 4 ] demuestra un principio de máximo para problemas 
de control óptimo con múltiples retardos constantes en las variables de estado y de control que, sin embargo, se 
eligen para que sean iguales para el estado y el control. Resultados similares fueron obtenidos por Ray y Soliman 
[ 5 ]. Guinn [6] describe un método sencillo para obtener las condiciones necesarias para problemas de control 
con retardo constante en la variable de estado. Sugiere ampliar el problema de control con retardo, lo que da 
lugar a un problema de control sin retardo de mayor dimensión al que se aplica el principio del máximo estándar. 
Banks [7] deriva un principio del máximo para sistemas de control con retardo dependiente del tiempo en la 
variable de estado. Se admiten retardos en el control para sistemas lineales en la variable de control. Colonius 
y Hinrichsen [8] proporcionan un enfoque unificado para problemas de control con retardos en la variable de 
estado mediante la aplicación de la teoría de las condiciones necesarias para problemas de optimización en 
espacios de funciones. Todos los artículos mencionados hasta ahora no consideran restricciones generales de 
control o desigualdad de estado.

Angell and Kirsch [ 9 ] treat functional differential equations with function-space state inequality constraints. However, they do not 
discuss the regularity of the multiplier associated with the state constraint and do not provide a numerical example with a pure state 
space constraint. To our knowledge, optimal control problems with constant delays in state and control variables and mixed control–state 
inequality constraints have not yet been considered in the literature. The ﬁrst goal in this paper is to derive a Pontryagin-type minimum 
(maximum) principle for this class of delayed control problems. Concerning the development of numerical methods and the numerical treatment 
of practical examples, our impression is that this topic has not yet been adequately addressed in the literature. Bader [ 10 ] uses 
collocation methods to solve the boundary value problem for the retarded state variable and advanced adjoint variable. He successfully 
solves several academic examples, but his method does not give accurate results for the more difﬁcult CSTR reactor problem described in 
Soliman and Ray [ 5, 11 ] . A similar CSTR reactor problem is considered in Oh and Luus [ 12 ] and Dadebo and Luus [ 13 ] , who use the 
differential dynamic programming method with a moderate number of stages. Therefore, the second goal of this paper is the presentation of 
discretization and nonlinear programming methods that provide the optimal state, control and adjoint functions and allow for an accurate 
check of the necessary conditions.

Angell y Kirsch [9] tratan ecuaciones diferenciales funcionales con restricciones de desigualdad de estado en el 
espacio de funciones. Sin embargo, no discuten la regularidad del multiplicador asociado con la restricción de 
estado y no proporcionan un ejemplo numérico con una restricción de espacio de estado pura. Hasta donde sabemos, 
los problemas de control óptimo con retardos constantes en las variables de estado y control y restricciones 
mixtas de desigualdad de control-estado aún no se han considerado en la literatura. El primer objetivo de este 
artículo es derivar un principio de mínimo (máximo) de tipo Pontryagin para esta clase de problemas de control 
con retardo. Con respecto al desarrollo de métodos numéricos y el tratamiento numérico de ejemplos prácticos, 
nuestra impresión es que este tema aún no se ha abordado adecuadamente en la literatura. Bader [10] utiliza 
métodos de colocación para resolver el problema de valor de frontera para la variable de estado retardada y la 
variable adjunta avanzada. Resuelve con éxito varios ejemplos académicos, pero su método no da resultados 
precisos para el problema más difícil del reactor CSTR descrito en Soliman y Ray [5, 11]. Un problema similar de 
reactor CSTR se considera en Oh y Luus [12] y Dadebo y Luus [13], quienes utilizan el método de programación 
dinámica diferencial con un número moderado de etapas. Por lo tanto, el segundo objetivo de este trabajo es 
presentar métodos de discretización y programación no lineal que proporcionen las funciones óptimas de estado, 
control y adjuntas, y permitan una verificación precisa de las condiciones necesarias.

The organization of this paper is as follows. Section 2 presents the statement of the delayed control problem with mixed state–control 
constraints. In Section 3, we recall the minimum principle for nondelayed control problems with control–state constraints. Here, a crucial 
feature is that the initial and the terminal boundary conditions must be considered in a general mixed form. Section 4 is devoted to the 
derivation of ﬁrst-order necessary optimality conditions for the delayed optimal control problem given in Section 2. Essentially, the 
augmentation approach of Guinn [ 6 ] is generalized, which allows to use the minimum principle in Section 3. For technical reasons, we need 
the assumption that the ratio of the time delays in state and control is a rational number. The analysis in this section is based on the 
theses of G¨ollmann [ 14 ] and Kern [ 15 ] . In Section 5, the Euler discretization for the delayed control problem is discussed, which 
leads to a high-dimensional nonlinear programming problem. As in the nondelayed case, it can be shown that the Lagrange multipliers 
corresponding to the optimization problem constitute an Euler discretization for the advanced adjoint equations. In Section 6, we discuss 
an analytical example that allows to test the accuracy of the numerical solution for various step sizes. Sections 7 and 8 are devoted to 
the numerical solution and the veriﬁcation of the minimum principle for two practical examples. The ﬁrst example is taken from [ 5, 11 ] 
and describes the optimal control of a chemical tank reactor (CSTR reactor), whereas the second example arises in the optimal harvesting of 
a resource (optimal ﬁshing).

La organización de este artículo es la siguiente. La Sección 2 presenta el enunciado del problema de control 
retardado con restricciones mixtas de estado y control. En la Sección 3, recordamos el principio de mínimo para 
problemas de control sin retardo con restricciones de control y estado. Aquí, una característica crucial es que 
las condiciones de contorno iniciales y finales deben considerarse en una forma mixta general. La Sección 4 se 
dedica a la derivación de las condiciones necesarias de optimalidad de primer orden para el problema de control 
óptimo retardado dado en la Sección 2. Esencialmente, se generaliza el enfoque de aumento de Guinn [6], lo que 
permite utilizar el principio de mínimo en la Sección 3. Por razones técnicas, necesitamos la suposición de que 
la razón de los retardos de tiempo en el estado y el control es un número racional. El análisis en esta sección 
se basa en las tesis de Göllmann [14] y Kern [15]. En la Sección 5, se discute la discretización de Euler para el 
problema de control retardado, lo que conduce a un problema de programación no lineal de alta dimensión. Como en 
el caso sin retardo, se puede demostrar que los multiplicadores de Lagrange correspondientes al problema de 
optimización constituyen una discretización de Euler para las ecuaciones adjuntas avanzadas. En la Sección 6, 
analizamos un ejemplo analítico que permite comprobar la precisión de la solución numérica para diferentes 
tamaños de paso. Las Secciones 7 y 8 se dedican a la solución numérica y a la verificación del principio de 
mínimo para dos ejemplos prácticos. El primer ejemplo se toma de [5, 11] y describe el control óptimo de un 
reactor de tanque químico (reactor CSTR), mientras que el segundo ejemplo surge en la explotación óptima de un 
recurso (pesca óptima).

**2. OPTIMAL CONTROL PROBLEMS WITH DELAYS IN STATE AND CONTROL**

We consider retarded optimal control problems with constant delays r  0 in the state variable x(t)∈R n and s  0 
in the control variable u(t)∈R m . The following retarded control problem with mixed control–state inequality 
constraints will be referred to as problem (ROCP):

Consideramos problemas de control óptimo retardado con retardos constantes r 0 en la variable de estado x(t)∈R n 
y s 0 en la variable de control u(t)∈R m . El siguiente problema de control retardado con restricciones de 
desigualdad mixtas de control-estado se denominará problema (ROCP):


subject to the retarded differential equation, boundary conditions and mixed control–state inequality constraints

sujeto a la ecuación diferencial retardada, condiciones de contorno y restricciones de desigualdad de 
estado-control mixtas

For convenience, all functions

Para mayor comodidad, todas las funciones

are assumed to be twice continuously differentiable w.r.t. all arguments. A pair of functions (u,x)∈ L ∞ ( [ 
a,b ] ,R m )×W 1,∞ ( [ a,b ] ,R n ) is called an admissible pair for problem (ROCP), if the state x and control 
u satisfy restrictions (2)–(6). An admissible pair (ˆu, ˆx) is called a locally optimal pair or weak minimum for 
(ROCP), if

Se supone que son dos veces continuamente diferenciables con respecto a todos los argumentos. Un par de funciones 
(u,x)∈ L ∞ ( [ a,b ] ,R m )×W 1,∞ ( [ a,b ] ,R n ) se denomina par admisible para el problema (ROCP), si el 
estado x y el control u satisfacen las restricciones (2)–(6). Un par admisible (ˆu, ˆx) se denomina par 
localmente óptimo o mínimo débil para (ROCP), si


holds for all (u,x) admissible in a neighborhood of (ˆu, ˆx) with ∥ u(t)− ˆu(t) ∥ , ∥ x(t)− ˆx(t) ∥ < for 
all t ∈ [ a,b ] and >0 sufﬁciently small. Instead of considering a weak minimum, we could use the more general 
notion of a Pontryagin minimum, thus admitting neighborhoods of (ˆu, ˆx) in the L 1 -norm; cf. Milyutin and 
Osmolovskii [ 16 ] .

se cumple para todo (u,x) admisible en un entorno de (ˆu, ˆx) con ∥ u(t)− ˆu(t) ∥ , ∥ x(t)− ˆx(t) ∥ < para 
todo t ∈ [ a,b ] y >0 suficientemente pequeño. En lugar de considerar un mínimo débil, podríamos usar la noción 
más general de un mínimo de Pontryagin, admitiendo así entornos de (ˆu, ˆx) en la norma L 1; cf. Milyutin y 
Osmolovskii [ 16 ] .

**3. FIRST-ORDER NECESSARY OPTIMALITY CONDITIONS FOR UNDELAYED OPTIMAL CONTROL PROBLEMS WITH MIXED CONSTRAINTS**

Formally, any undelayed control problem is contained in the retarded problem (ROCP) by choosing r =s =0. Owing to 
the absence of delays, the initial value proﬁles given by conditions (3) and (4) are omitted. However, the 
continuity of the state variables in the augmented problem necessitates to introduce a general boundary condition 
of mixed type,

which replaces the terminal boundary condition (5). This condition is indispensable in the proof of the necessary 
conditions presented in Section 4. The Hamiltonian or Pontryagin function for the nondelayed control problem 
without any constraints (6) is given by

The augmented Hamiltonian is deﬁned by adjoining the mixed control–state constraint (6) by a multiplier  ∈R p 
to the Hamiltonian (8):

Here and in the sequel, ∗ denotes the transposition. The extension of the classical Pontryagin’s minimum 
principle to the mixed control–state constraints (6) requires a regularity condition or constraint qualiﬁcation. 
For a locally optimal pair (ˆu, ˆx) and t ∈ [ a,b ] , let J 0 (t):= { j ∈ { 1,..., p }| C j (t, ˆx(t), ˆu(t))=0 
} denote the set of active indices for the inequality constraint (6). Then, we assume the rank condition:

The following necessary optimality conditions are to be found in Hestenes [ 17, Chapter 7, Theorem 3.1 ] and 
Neustadt [ 18, Chapter VI.3, p. 296 ] .

Theorem 3.1 (Pontryagin’s Minimum Principle) Let (ˆu, ˆx) be a locally optimal pair for the control problem 
(ROCP) without delays, i.e. r =s =0, and the mixed boundary condition (7). Assume that the regularity condition 
(10) is satisﬁed. Then there exist a costate (adjoint) function ˆ ∈W 1,∞ ( [ a,b ] ,R n ), a multiplier 
function  ˆ ∈ L ∞ ( [ a,b ] ,R p ) and a multiplier  ˆ ∈R q , such that the following conditions hold for a.e. 
t ∈ [ a,b ] :

(i) adjoint differential equation:

(ii) transversality conditions:

(iii) minimum condition for Hamiltonian:

(iv) local minimum condition for augmented Hamiltonian:

(v) nonnegativity of multiplier and complementarity condition:

In (12) and (13), w x a and w x b denote partial derivatives of w=w(x a ,x b ) with respect to its ﬁrst and 
second arguments. In the following section, Theorem 3.1 will be used to derive necessary conditions for the 
retarded control problem (ROCP).




4. NECESSARY OPTIMALITY CONDITIONS FOR DELAYED OPTIMAL CONTROL PROBLEMS WITH MIXED CONTROL–STATE CONSTRAINTS
------------------------------------------------------------------------------------------------------------

5. DISCRETIZATION, OPTIMIZATION AND CONSISTENCY OF ADJOINT EQUATIONS
--------------------------------------------------------------------

6. AN ANALYTICAL EXAMPLE
------------------------

7. A NONLINEAR CHEMICAL TANK REACTOR MODEL
------------------------------------------

8. OPTIMAL CONTROL OF A RENEWABLE RESOURCE
------------------------------------------

9. SOFTWARE VERSIONS AND CPU TYPE USED
---------------------------------------

10. CONCLUSION
--------------

REFERENCES

1. O˘guzt¨oreli MN. Time-Lag Control Systems. Academic Press: New York, 1966.

2. Kharatishvili GL. Maximum principle in the theory of optimal time-delay processes. Doklady Akademii Nauk USSR 1961; 136:39–42.

3. Kharatishvili GL. A Maximum Principle in External Problems with Delays. Mathematical Theory on Control.

Academic Press: New York, 1967.

4. Halanay A. Optimal controls for systems with time lag. SIAM Journal on Control 1968; 6:215–234.

5. Soliman MA, Ray WH. On the optimal control of systems having pure time delays and singular arcs. International Journal of Control 1972; 
16(5):963–976.

6. Guinn T. Reduction of delayed optimal control problems to nondelayed problems. Journal of Optimization Theory and Applications 1976; 
18:371–377.

7. Banks HT. Necessary conditions for control problems with variable time lags. SIAM Journal on Control 1968; 8(1):9–47.

8. Colonius F, Hinrichsen D. Optimal control of functional differential systems. SIAM Journal on Control and Optimization 1978; 
16(6):861–879.

9. Angell TS, Kirsch A. On the necessary conditions for optimal control of retarded systems. Applied Mathematics and Optimization 1990; 
22:117–145.

10. Bader G. Numerische Behandlung von Randwertproblemen f¨ur Funktionaldifferentialgleichungen. Preprint 227, Universit¨at Heidelberg, 
Institut f¨ur Angewandte Mathematik, 1983.

11. Soliman MA, Ray WH. Optimal control of multivariable systems with pure time delays. Automatica 1971; 7:681–689.

12. Oh SH, Luus R. Optimal feedback control of time-delay systems. AIChE Journal 1976; 22(1):140–147.

13. Dadebo S, Luus R. Optimal control of time-delay systems by dynamic programming. Optimal Control Applications and Methods 1992; 
13:29–41.

14. G¨ollmann L. Numerische Behandlung optimaler Steuerprozesse mit konstanten Verz¨ogerungen unter gemischten 
Steuer-Zustandsbeschr¨ankungen. Dissertation, Universit¨at M¨unster, Institut f¨ur Numerische Mathematik, 1996.

15. Kern D. Notwendige Optimalit¨atsbedingungen und numerische L¨osungsmethoden f¨ur optimale Steuerprozesse mit Retardierungen. Diploma 
Thesis, Institut f¨ur Numerische Mathematik, Universit¨at M¨unster, 2005.

16. Milyutin AA, Osmolovskii NP. Calculus of Variations and Optimal Control. Translations of Mathematical Monographs, vol. 180. American 
Mathematical Society: Providence, RI, 1998.

17. Hestenes MR. Calculus of Variations and Optimal Control Theory. Wiley: New York, 1966.

18. Neustadt LW. Optimization—A Theory of Necessary Conditions. Princeton University Press: Princeton, NJ, 1976.

19. Fourer R, Gay DM, Kernighan BW. AMPL: A Modeling Language for Mathematical Programming. The Scientiﬁc Press: South San Francisco, CA, 
1993.

20. Vanderbei RJ. LOQO: an interior point code for quadratic programming, Report, Statistics and Operations Research, Princeton University, 
1998.

21. W¨achter A. An interior point algorithm for large-scale nonlinear optimization with applications in process engineering. Dissertation, 
Carnegie Mellon University, Pittsburgh, 2002.

22. W¨achter A, Biegler LT. On the implementation of an interior–point ﬁlter line-search algorithm for large-scale nonlinear programming. 
Mathematical Programming 2006; 106:25–57.

23. B¨uskens Ch. Optimierungsmethoden und Sensitivit¨atsanalyse f¨ur optimale Steuerprozesse mit Steuer–und Zustandsbeschr¨ankungen. 
Dissertation, Institut f¨ur Numerische Mathematik, Universit¨at M¨unster, 1998.

24. Hager W. Runge–Kutta methods in optimal control and the transformed adjoint system. Numerische Mathematik 2000; 87:247–282.

25. Ray WH, Soliman MA. The optimal control of processes containing pure time delays—I, necessary conditions for an optimum. Chemical 
Engineering Science 1970; 25:1911–1925.

26. May RM. Time-delay versus stability in population models with two and three tropic levels. Ecology 1973; 54:315–325.

27. May RM. Stability and Complexity in Model Ecosystems (2nd edn). Princeton University Press: Princeton, NJ, 1975.

28. Feddermann F. ¨Okonomische Nutzung regenerativer Ressourcensysteme. Dissertation, Universit¨at M¨unster, Institut f¨ur Numerische 
Mathematik, Universit¨at M¨unster, 2004. Published in: Verlag Dr. Kovaˇc: Hamburg, 2005.

29. Clarke FH, Wolenski PR. The sensitivity of optimal control problems to time delay. SIAM Journal on Control and Optimization 1991; 
29(5):1176–1215.

30. Vanderbei RJ, Shanno DF. An interior–point algorithm for nonconvex nonlinear programming. Computational Optimization and Applications 
1999; 13:231–252.

31. Chan WL, Yung SP. Sufﬁcient conditions for variational problems with delayed argument. Journal of Optimization Theory and Applications 
1993; 76:131–144.


