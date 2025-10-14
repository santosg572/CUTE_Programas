Dissipativity and Turnpike Property in a Controlled Stochastic Lotka-Volterra Model with Lvy Jumps.
----------------------------------------------------------

We consider a controlled stochastic Lotka-Volterra model for a predator-two prey model with Lévy jumps. We study an optimal control problem for this 
model and the stability of its solutions. We discuss a type of stability for state trajectories, optimal control, and adjoint trajectories, called 
turnpike property. This property implies that an optimal trajectory, for most of the time, could remain in a neighborhood of a balanced equilibrium 
trajectory. Assuming linear growth and Lipschitz conditions on the drift and diﬀusion terms, applying algebraic Riccati theory and the Stochastic 
Maximum Principle, we express optimal control in terms of the Lvy process and the state and adjoint variables, and establish an exponential estimate 
of the convergence rate of the equilibrium trajectories. Furthermore, we introduce the deﬁnition of dissipativity for general stochastic systems and 
demonstrate the relationship between dissipativity and turnpike property for our controlled stochastic Lotka-Volterra model with Lévy jumps. We 
illustrate our results through a simulation with a numerical example.

Consideramos un modelo estocástico controlado de Lotka-Volterra para un modelo depredador-dos presas con saltos de Lévy. Estudiamos un problema de 
control óptimo para este modelo y la estabilidad de sus soluciones. Discutimos un tipo de estabilidad para trayectorias de estado, control óptimo y 
trayectorias adjuntas, llamada propiedad de la curva de giro. Esta propiedad implica que una trayectoria óptima, durante la mayor parte del tiempo, 
podría permanecer en las proximidades de una trayectoria de equilibrio equilibrada. Asumiendo crecimiento lineal y condiciones de Lipschitz en los 
términos de deriva y difusión, aplicando la teoría algebraica de Riccati y el Principio del Máximo Estocástico, expresamos el control óptimo en 
términos del proceso de Lvy y las variables de estado y adjuntas, y establecemos una estimación exponencial de la tasa de convergencia de las 
trayectorias de equilibrio. Además, introducimos la definición de disipatividad para sistemas estocásticos generales y demostramos la relación entre 
la disipatividad y la propiedad de la curva de giro para nuestro modelo estocástico controlado de Lotka-Volterra con saltos de Lévy. Ilustramos 
nuestros resultados mediante una simulación con un ejemplo numérico.

1 Introduction
--------------

In mathematical ecology, the Lotka-Volterra systems represent one of the most important models to analyze population dynamics, because they describe 
very well many aspects of interactions between species in competition, such as persistence, extinction and stability of its solutions, [1]. These 
models are more realistic when we consider natural random environmental variations, introducing Wiener processes, or even better, L´evy processes. 
Considering a dynamic with jumps in the model, which represent abrupt environmental changes in the ecosystem, allows for an adequate study of 
anomalous diﬀusion and nonlinearity in nature, such as volcanic eruptions, earthquakes, cyclonic storms, global warming and hazardous waste 
pollution, [2]. Beside, some nonlinear control systems have the following property called turnpike property: the optimal trajectory, the optimal 
control, and the corresponding adjoint vector remain exponentially close to a steady state. 

En ecología matemática, los sistemas Lotka-Volterra representan uno de los modelos más importantes para analizar la dinámica poblacional, debido a que 
describen muy bien muchos aspectos de las interacciones entre especies en competencia, tales como la persistencia, extinción y estabilidad de sus 
soluciones, [1]. Estos modelos son más realistas cuando consideramos variaciones ambientales aleatorias naturales, introduciendo procesos de Wiener, o 
mejor aún, procesos de L'evy. Considerar una dinámica con saltos en el modelo, que representan cambios ambientales abruptos en el ecosistema, permite 
un estudio adecuado de la difusión anómala y la no linealidad en la naturaleza, tales como erupciones volcánicas, terremotos, tormentas ciclónicas, 
calentamiento global y contaminación por residuos peligrosos, [2]. Además, algunos sistemas de control no lineal tienen la siguiente propiedad llamada 
propiedad de autopista: la trayectoria óptima, el control óptimo y el vector adjunto correspondiente permanecen exponencialmente cerca de un estado 
estacionario.

The Turnpike property of a solution of an optimal control 
problem means that an optimal trajectory for most of the time could stay in a neighborhood of a balanced equilibrium path, corresponding to the 
optimal steady-state solution. This property is a characteristic of the Turnpike theory which was introduced in 1958 in mathematical economics and 
recently has been applied in Control Theory in [3]. Many papers have been written about stochastic Lotka-Volterra models with jumps. In [4], the 
authors consider a competitive LotkaVolterra population dynamics with jumps without control functions and they investigate the sample Lyapunov 
exponent for each component of the solution and uniform boundedness of the pth moment with p > 0. Also, in [5] was studied the asymptotic convergence 
of a general stochastic population dynamics of the type Lotka-Volterra and driven by L´evy noise, given some important asymptotic pathwise estimation 
assuming diﬀerent conditions over the Poisson’s process coeﬃcient, but they don’t consider any control functions in the processes. In [6] we analyze 
the turnpike property of a stochastic controlled Lotka-Volterra system only with white noise.

La propiedad de Turnpike de una solución de un problema de control óptimo implica que una trayectoria óptima podría permanecer la mayor parte del 
tiempo en las proximidades de una trayectoria de equilibrio equilibrada, correspondiente a la solución óptima en estado estacionario. Esta propiedad 
es una característica de la teoría de Turnpike, introducida en 1958 en economía matemática y aplicada recientemente en teoría de control en [3]. Se 
han escrito numerosos artículos sobre modelos estocásticos de Lotka-Volterra con saltos. En [4], los autores consideran una dinámica poblacional 
competitiva de Lotka-Volterra con saltos sin funciones de control e investigan el exponente de Lyapunov muestral para cada componente de la solución y 
la acotación uniforme del momento p con p > 0. Además, en [5] se estudió la convergencia asintótica de una dinámica poblacional estocástica general 
del tipo Lotka-Volterra e impulsada por ruido de L'evy, dada una importante estimación asintótica de trayectorias asumiendo diferentes condiciones 
sobre el coeficiente del proceso de Poisson, pero no consideran ninguna función de control en los procesos. En [6] analizamos la propiedad de 
autopista de un sistema Lotka-Volterra controlado estocástico solo con ruido blanco.


Dissipativity theory is a system-theoretic concept that provides a powerful framework for the analysis and control design of open dynamical systems 
based on generalized system energy considerations. In particular, dissipativity theory deals with the study of the properties of dynamical systems 
related to the conservation, dissipation, and transport of mass and energy. For a dissipative dynamic system, the stored energy is at most equal to 
the sum of the initial energy stored in the system and the total energy supplied externally to the system.

La teoría de la disipatividad es un concepto de la teoría de sistemas que proporciona un marco sólido para el análisis y el diseño de control de 
sistemas dinámicos abiertos, basado en consideraciones energéticas generalizadas. En particular, la teoría de la disipatividad estudia las propiedades 
de los sistemas dinámicos relacionadas con la conservación, la disipación y el transporte de masa y energía. En un sistema dinámico disipativo, la 
energía almacenada es, como máximo, igual a la suma de la energía inicial almacenada en el sistema y la energía total suministrada externamente.


The model to consider here is a controlled jump diﬀusion process given by the following non-linear stochastic ordinary diﬀerential equations system 
with initial and ﬁnal conditions:

El modelo a considerar aquí es un proceso de difusión por salto controlado dado por el siguiente sistema de ecuaciones diferenciales ordinarias 
estocásticas no lineales con condiciones iniciales y finales:

.. math::

   dx = f(t, x(t), u(t))dt + g (t, x(t), u(t))dW(t) + x(t)u(t) \int_{\mathbb{R}^3} \gamma (t, x(t−),)) z \widetild{N}} N(dt, z ) 

(1)

:math:`x(t_0 ) = (x_{10} , x_{20} , x_{30})`,

where f : [0, T ] × R 3 × R 3 → R 3 is a measurable function called the drift, the process u : R → R 3 , u(t) = (u 1 (t), u 2 (t), u 3 (t)), is a 
measurable and bounded function called the control, which belongs to a region control U ∈ R3 

and it is an adapted and cadlag function (continuous on the right and limit on the left), and g (t, x, u), a measurable function deﬁned also on [0, T 
] × R 3 × R3  and R 3×3 -valued, g (t, x, u) = (g 1 (t, x, u), g 2 (t, x, u), g 3 (t, x, u)), where g j (t, x, u) = (g 1j (t, x, u), g 2j (t, x, u), g 
3j (t, x, u)) ⊤ , 1 ≤ j ≤ 3 and for the compensated Poisson random measure ˜N(dt, dz ), we write, according to L´evy decomposition theorem,

[7], ˜N(dt, dz ) = (˜N 1 (dt, dz ), ˜N 2 (dt, dz ), ˜N 3 (dt, dz )) and ˜N j (dt, dz ) = N j (dt, dz ) −

ν j (dz j )dt, 1 ≤ j ≤ 3, with N j (dt, dz ) Poisson counting measure and x i (t−) denotes the left hand limit of x at time t. Speciﬁcally, we 
consider the following functions f (t, x(t), u(t)), g (t, x(t), u(t)):

x 1 (t)(1 − β x 2 (t) − δ (t)x 3 (t) − A 1 u 1 (t)) α 1 0 0 f =  x 2 (t)(1 − β x 1 (t) − x 3 (t) − A 2 u 2 (t))  , g =  0 α 2 0  ,  x 
3 (t)(−1 + δx 1 (t) + x 2 (t) − A 3 u 3 (t))   0 0 α 3 

(2)

where η , ω, κ , β , δ, η and  in (0, 1]. u 1 (t), u 2 (t), u 3 (t) are the controls with constants A 1 , A 2 , A 3 ∈ (0, 1], standard independents 
Wiener processes W 1 (t), W 2 (t), W 3 (t) with parameters α 1 , α 2 , α 3 ∈ (0, 1], deﬁned over a probability space (Ω, F, P ), where Fs  denotes 
the σ -algebra generated by all random variables X i with i ≤ s; the collection of such σ -algebras forms a ﬁlter of the probability space. The 
class of admissible controls U is the set of F s -predictable processes with values in U . and, ﬁnally, N (t) is a Poisson process independent of W i 
(t). In the above, as is conventional, P denotes a probability measure in the sample space Ω of the stochastic process X : [0, T ] × Ω → [0, + ∞ ) 
and E [X ] denotes the expected value with respect to the probability measure P , that is,

∫ Ω Considering the stochastic diﬀerential system (1), we assume the following hypothesis related with the Lipschitz and linear growth conditions 
in the x variable, for f (x, t, u), g (x, t, u) and h : R 3 → R 3 the jump coeﬃcient or Poisson’s process

the integral E [X T ] =

X T ω ) dP ( ω ) in the sense of Lebesgue integration.

(

∫ R3  (H1) There exist constants κ 1 < ∞ and κ 2 < ∞ such that f (x, t, u), g (x, t, u) and h(x, t, u) satisfy:

coeﬃcient, deﬁned by h(x, t, u) =

a) || f (x, t, u) || 2 ≤ κ 1 (1 + || x || 2 ),

γ

(t, x, z )¯N(dt, dz ).

2 2 2 || g (x, t, u) || ≤ κ 1 (1 + || x || ), ||γ (t, x, z ) || 2 ¯N(dt, dz ) ≤ κ 1 (1 + || x || ). ∫ R3  b) || f (x, t, u) − f (y, t, u) || 2 ≤ 
κ 2 || x − y || 2 ,

2 2 || g (x, t, u) − g (y, t, u) || ≤ κ 2 || x − y || , ||γ (t, x, z ) − γ (t, y, z ) || 2 ¯N(dt, dz ) ≤ ∫ R3 

κ 2 || x − y || 2 . (H2) There exists κ 3 < ∞ , such that ∀t ∈ R : || u(t) || ≤ κ3 

(H3) For M ⊂ R 3 : sup sup |γ (s, x(s−), z ) | < ∞ .

x ∈ M 0 ≤| z |≤ c

We are interested in the exponential stability of solutions to a stochastic optimal control problem, the Turnpike property for this problem, and its 
relationship to the dissipative property.

2 Stochastic Optimal Control Problem

We establish the following Stochastic Optimal Control Problem (SOCP):

To ﬁnd the controls u 1 (t), u 2 (t), u 3 (t) in system (1), which minimize the following expected cost functional in the Lagrange form:

3 1 T J (u 1 , u 2 , u 3 ) = E ∑ (t) + u i 2 (t) xi 2  dt , a.s. { 2 ∫ 0 ( ) } i=1

(3)

Deﬁnition 1 The control u ∗ (t) = (u ∗ (t), u ∗ (t), u ∗ (t)) is said to be an optimal control if it 1 2 3 satisﬁes J(u ∗ (·)) = min u(·) 
J(u(·)). The corresponding state x ∗ (t) is called optimal state and (x ∗ (t), u ∗ (t)) is called the pair optimal.

We deﬁne a generalized Hamiltonian function H (x(t), p(t), q (t), u(t)) associated to SOCP, [7]:

H = ⟨ p(t), f (t, x, u) ⊤ ⟩ + tr[q (t)g (t, x, u) ⊤ ] − f 0 (t, x, u)

3 + ∑ x i (t)p i (t)u i (t) γ i (t, x i (t−), z )N (dt, dz ). i=1 ∫ R

(4)

xi 2  (t) + u i 2 (t) . Then, the adjoint equations correspon∑ i=1 3 ( ) ding to the processes p(t) are the followings:

where f 0 (t, x, u) = 2 1

3 dp(t) = − ⟨ f x (t, x, u) ⊤ , p(t) ⟩ + ∑ ⟨ g x j (t, x(t), u(t)) ⊤ , q j (t) ⟩ − (f 0 (t, x(t), u(t)))x  dt { } j=1 + 〈 q (t) dW (t) 〉 + 
u(t)p(t) γ (t, x(t−), z )N (dt, dz ), ∫ R3 

(5)

p(T ) = (p 11 , p 21 , p 31 ) ⊤ ,

and, according to the necessary conditions of stochastic maximum principle

∂H (x, p, q, u) = 0, i = 1, 2, 3, ∂ui 

(6)

u i (t) = −A i p i (t)x i (t) + p i (t)x i (t) γ i (t, x i (t−), z )N (dt, dz ), ∫ R

(7)

and we have the following suﬃcient conditions of optimality of SOCP in our model:

Theorem 1 The control u ∗ (t) = (u ∗ (t), u ∗ (t), u ∗ (t)) given by (7) is the solution of the 1 2 3 Stochastic Optimal Control Problem.

Proof Let u ∗ (t) be the control given by (7) and let x ∗ (t) be the corresponding state of (1) associated to u ∗ (t). Let u(t) ∈ U be any 
arbitrary control satisfying the system (1). We deﬁne the Hamiltonian corresponding to (4) by H ∗ (t) = H(x ∗ (t), p(t), q(t), u ∗ (t)). Now, we 
consider the product 〈 p(T), x(T) − x ∗ (T) 〉 . By applying Itˆo property with jumps, we have:

∗ ∗ ∗ d ⟨ p(T), x(T) − x (T) ⟩ = ⟨ p(T), d(x(T) − x (T)) ⟩ + q(t)(g(x) − g(x ))dt + q(t)(g(x)

(8)

∗ −g(x ))dt + p(t)u(t) γ (t, x(t−), z)¯N(dt, dz)), ∫ R3 

which gives by integration, taking the expected value and using (??) and (3):

∗ ∗ E ⟨ p(T), x(T) − x (T) ⟩ − ⟨ p(0), x i (0) − x (0) ⟩ ( )

T T ∗ ∗ = E ⟨ p(t), d(x(t) − x (t)) ⟩ + ⟨ d(x(t) − x (t))dp(t) ⟩ ( ∫ 0 ∫ 0

T ∗ + q(t) (t)) g(x(t)) g((x dt ∫ 0 ( )

∗ +(x(t) − x (t))p(t)u(t) γ (t, x(t−), z)¯N(dt, dz)) ∫ R 3 )

T T ∗ ∗ = E ⟨ p(t), f(x(t)) − f(x (t)) ⟩ dt + q(t) (t)) g(x(t)) g(x dt ( ∫ 0 ∫ 0 ( )

∗ +(x(t) − x (t))p(t)u(t) γ (t, x(t−), z)¯N(dt, dz)) ∫ R3 

T ∗ ∂H ∗ − x(t) − x (t), (t) dt 0 ∫ ⟨ ∂x ⟩ )

T ∗ ∗ ∗ = E (t, x, u) − (H (t) − f 0 (t, x , u )) H(x, p, q, u) f dt ( ∫ 0 ( 0 ) )

T ∂H ∗ ∗ −E H(x, p, q, u) − H (t) − (x(t) − x (t)), (t) dt ( ∫ 0 ⟨ ∂x ⟩ )

T ∂H ∗ ∗ = E ( H(x, p, q, u) − H (t) − (x(t) − x (t)), (t) dt ( ∫ 0 ⟨ ∂x ⟩ ) )

T ∗ ∗ −E f 0 (t, x, u) − f 0 (t, x , u )dt ( ∫ 0 )

T ∗ J(u) − J(u ∗ ) ∂H ∗ = E H(x, p, q, u) − H (t) − (x(t) − x (t)), (9) (t) dt ( ∫ 0 ( ⟨ ∂x ⟩ ) ) 2

Transversality conditions in the stochastic maximum principle and equations (9) imply:

T ∗ ∗ ∗ E H(x(t), p(t), q(t), u(t)) − H (t) − ⟨ x(t) − x (t), H x (t) ⟩ dt ) (10) = J(u) J(u ( ∫ 0 )

and the convexity of H(·, p, q, ·) in x(t), u(t), given by (4), implies:

T T ∗ ∗ (H(x(t), p(t), q(t), u(t)) − H (t))dt ≤ ⟨ x(t) − x (t), H x (t) ⟩ dt. ∫ 0 ∫ 0

(11)

Finally, from (10) and (11) we deduce: J(u ∗ ) ≤ J(u) the optimal control and the proof is completed.

Beside, consider the complete steady-state solution { ¯x(t), ¯u(t), ¯p(t), ¯q(t) } of system (1) with the cost functional (3), adjoint system (5) and 
variable q (t). We have the following theorem:

Theorem 2 Assuming hypothesis (H1)-(H3) and given the steady-state solution (¯x(t), ¯u(t), ¯p(t), ¯q(t)) corresponding to the solution { x(t), u(t), 
p(t), q(t) } of system (1) with the cost functional (3), the solutions to SOCP satisfy the Turnpike property: there exit constants C 1 and C 2 such 
that:

2 2 2 −2C1  (t−t 0 ) E || x (t) − ¯x(t) || + E || u (t) − ¯u(t) || + E || p (t) − ¯p(t) || ≤ C 2 e . T T T

(12)

 Proof First, we will show that E | x(t) | 2 is bounded. The inequality   ∑

 x i 



2

n

i=1

≤

n ∑ i=1 n | x i

leads to:

2 |

, n ∈ N and the Ito-L´evy isometry property applied to expression:

T T x(t) = x 0 + f(x, t, u)dt + g(x, t, u)dW t ∫ 0 ∫ 0

T +x(t)u(t) ξ (t, x, z)¯N(dt, dz), ∫ 0 ∫ R

(13)

T T E | x(t) | 2 ≤ 4(E | x(0) | 2 + T E | f(x, t, u) | 2 dt + E | g(x, t, u)dt | 2 ∫ 0 ∫ 0

T 2   +E | x(t)u(t) | 2 E  ν(dz)dt)  ). ∫ 0  ∫ R 

We use (H1), (H2) and (H3) to get

T T T E | x(t) | 2 ≤ 4(E | x(0) | 2 + Tκ 1 E | x(t) | 2 dt + κ 1 E | x(t) | 2 + κ 1 κ 3 E | x(t) | 2 dt) ∫ 0 ∫ 0 ∫ 0

T 2 2 ≤ 4 ( E | x(0) | + κ 1 (T + 1 + κ 3 ) E | x(t) | dt ) . ∫ 0

2 (T +1+κ 3 ) κ1  By using Gronwall’s inequality we obtain E | x(t) | ≤ K, taking K = 4e Now, we consider a perturbation of variables x(t), u(t), 
p(t), q(t) as follow:

x(0) | 2 .

|

x T (t) = ¯x(t) + δx(t),

u T (t) = ¯u(t) + δu(t),

p T (t) = ¯p(t) + δp(t),

(14)

q T (t) = ¯q(t) + ψ (t)δq(t) + x(t)u(t) γ (t, x, z)¯N(dt, dz) δq(t). ∫ R3 

2

H ∂H ∂ We denote , by H uu , · · · , etc. and, by using the Hamiltonian perturbed by H u ∂u ∂u 2 and the stochastic Maximum Principle with jumps, 
we obtain:

−1 δu(t) = −H uu

H ux (

δx(t) + H up δp(t) + H uq δq(t)

(t) + x(t)u(t) ( ψ ∫ R3 

γ

(t, x, z)¯N(dt, dz)

, ))

δ x˙ = δH p + δH q = H px δx(t) + H pu δu(t) + H pp δp(t) + H pq δq(t).

(15)

Observing that H pp = H pq = 0 and δH q = 0, we obtain:

−1 −1 δ ˙x(t) = ( H px − H pu H uu H ux ) δx(t) − H pu H uu H up δp(t)

−H pu H uu H uq δq(t) γ (t, x, z)¯N(dt, dz) (t + x(t)u(t) . ( ψ ∫ R 3 )

(16)

Analogous for p(t) we get:

δ ˙p(t) = −H xx δx(t) − H xu δu(t) − H xp δp(t) − H xq δq(t)

−1 −1 = (−H xx + H xu H uu H ux )δx(t) + (−H xp + H xu H uu H up )δp(t)

−1 + + H xu H uu H uq γ (t, x, z)¯N(dt, dz) H (t) + x(t)u(t) δq(t)(17) xq ( ( ψ ∫ R 3 ))

−1 Now, following [3] for our stochastic extended system, we deﬁne A = H px − H pu H uu H ux ,

−1 ˆ ⊤ ⊤ W(t) = (dW(t), dW(t)) R = −H xx + H xu H uu H ux , B = H pu , Z(t) = (δx(t), δp(t)) , d ,

xˆ(t)ˆu(t)

∫ R3 

γ

(t, x, z)¯N(dt, dz) =

x(t)u(t) ( ∫ R3 

γ

(t, x, z)¯N(dt, dz), x(t)u(t)

∫ R3 

γ

(t, x, z)¯N(dt, dz)

, )

where dW(t) = (dW 1 (t), dW 2 (t), dW 3 (t)), dW i = ψ (t)δq i (t), (A) ∗ denotes transposition of

A and

A −BH −1 B ∗ −BH −1 B ∗ x T (0) − ¯x M ˆ = uu , Q = uu , Z 0 = ∗ −1 . ( R −A ) ( −H px + H xu H uu H uq ) ( p T (0) − ¯p )

So, we may write the systems (1) and (5) as follows:

dZ(t) = ˆ MZ(t)dt + Qd ˆ W(t) + Q xˆ(t)ˆu(t) γ (t, x, z)¯N(dt, dz), Z(0) = Z 0 . ∫ R3 

(18)

Existence-and-uniqueness of solution of equation (18) is guaranteed by assumption (H1) and [7]. Besides, since M ˆ is a matrix time-independent [3], 
the solution of system (18), is given by:

t t Z(t) = e M(t−t 0 ) Z 0 + e M(s−s 0 ) Q d ˆ W(s)+ xˆ(t)ˆu(t) e M(s−s 0 ) Qh(x, t, u) dN(s). (19) ∫ t 0 ∫ t0 

M ˆ in the deterministic part of equation (19) to apply the methods

Now, we focus the matrix of the Riccati theory used in [3] to found the constant C 1 : considering the algebraic Riccati equation:

∗ −1 ∗ XA + A X − XBH uu B X − R = 0,

and its minimal symmetric negative deﬁnite matrix solution, E − , whose existence and uniqueness is guaranteed in [3], the Riccati theory allows to 
obtain a diagonal matrix equivalent to M ˆ that satisﬁes equation (19), whose upper diagonal is A + BH uu −1 B ∗ E and its eigenvalues have 
negative real parts. So, deﬁning

∗ C 1 = − max {µ|µ ∈ Spec(A + BH uu −1 B E − ) } > 0,

(20)

we have, [8]:

M(t−t0  ) (t−t 0 ) −C1  || e || ≤ e .

(21)

By [7], from (19), we apply the Schwarz inequality and Ito’s isometry to obtain:

t 2 −C 1 (t−t 0 ) −C 1 (s−s 0 ) ˆ 2 2 0 E || Z(t) || ≤ 3(E || e Z || + E || e QdW(s) || ∫ t0 

t +E || xˆ(t)ˆu e −C 1 (s−s 0 ) Q γ (t, x, z)¯N(dt, dz) || 2 ). ∫ t0 

(22)

The previous inequality yields:

t −2C 1 (t−t 0 ) (t−t 0 ) E || Z(t) || 2 ≤ 3 || Z 0 || 2 + e −2C 1 E || Q || 2 ds e ( ∫ t0 

t +e −2C 1 (t−t 0 ) E || xˆ(t)ˆu(t) || 2 E || Q γ (t, x, z)¯N(dt, dz) || 2 , ∫ t 0 ∫ R 3 )

and, by assumptions (H1a), (H2), and the fact showed that E | x(t) | 2 is bounded and, in our model, the matrix Q is bounded, we deduce:

t 2 −2C1  (t−t 0 ) 2 2 E || Z(t) || ≤ 3e ( || Z 0 || + E || Q || ds ∫ t0 

t +E || xˆ(t) || 2 || uˆ(t) || 2 E || Q || 2 κ 1 || Z(s) || 2 ds ∫ t 0 )

(23)

t −2C1  (t−t 0 ) 2 2 2 2 ≤ 3e ( || Z 0 || + || Q || + κ 3 Kκ 1 E || Z(s) || ds ) . ∫ t0 

Finally, considering || Z 0 || < ∞ and || Q || < ∞, from Gronwall’s inequality and setting C 2 = 3( || Z 0 || 2 + || Q || 2 + κ 3 2 K 2 κ 1 ), 
inequality (23) can be rewritten in the form:

2 −2C1  (t−t 0 ) E || Z(t) || ≤ C 2 e ,

(24)

from which the proof is complete.

Now, we introduce a Lyapunov function, which is a Ito-L´evy process V (x, t) ∈ C 2,1 (R 3 × R + ; R + ) and also we introduce the linear operator or 
diﬀusion operator

L : R + × R n → R, acting on V (x, t), deﬁned as following:

∂V ∂V ∂ 2 V 1 LV (t, x) = t, x) + t, x), f (t, x, u) + trace (t, x) (t, x)g (t, x) ( ( g⊤  ∂t ⟨ ∂x ⟩ 2 ( ∂x 2 )

∂V +x(t)u(t) { V ( t, x(t−) + γ (x, t) ) − V (t, x(t−) − γ i (x, t)) x, t) } ν (dz ), ( ∫ | z | <c ∂x

where c ∈ (0, ∞ ) is the maximum jump size. Also, we deﬁne the following controlled processes [9], which will appear in the proof of the next 
result:

t V (x(s) + (x, s, z )) − V (x(s)) (x, s, z ) ¯I 1 (t) = x(t)u(t) ξ − ξ i V x (x(s)) ν (dz )ds, ∫ 0 ∫ | z | <c V (x(s)) V (x(s))

t V ( x(s) + (x, s, z )) x(s) + (x, s, z )) V ( ¯I 2 (t) = x(t)u(t) (log ξ + 1 − ξ ν (dz )ds), ∫ 0 ∫ | z | <c V (x(s)) V (x(s))

Deﬁnition 2 A Control Problem is called dissipative stochastically with respect to a function called dissipation rate r(x, u), if there exists a 
function ν(x, u) called storage such t0  that the stochastic process { ν(x, u) − ∫ 0 r(x, u)ds : t ≥ 0 } to be un martingale such that:

t 1 t0  E r(x, u)ds | F t 1 , u t 2 ) − r(x, u)ds ν(x(t), u(t)) ν(x t1  ( ∫ 0 ) ≤ ∫ 0

(25)

Theorem 3 Assuming hypothesis (H1)-(H3), if there exist a C 2 -function V(x t , u t ), a continuous and increasing function r(x) and positive 
constants c 2 , c 3 , such that:

i) LV (x t , u t ) ≤ −c 2 r( || x t − ¯x t || )

ii) V (x t , u t ) ≤ f 0 (x t , u t ) − f 0 (x 0 , u 0 ),

then the system (1) is dissipative stochastically.

Proof We consider the process e c 3 t V(x t , u t ). Applying Ito’s isometry property:

t t t s s e c 3 V(x t , u t ) = V(x 0 , u 0 ) + c 3 e c 3 V(x s , u s )ds + e c 3 V x (x s , u s )(f(x s , u s )ds + g(x s , u s )dW s ), ∫ 0 ∫ 0

t +x t u t e c 3 s (V (x x , u s ) + ξ (x s , y) − V (x s , u s )¯N(ds, dy), ∫ 0 ∫ y ≤ c

t +x t u t e c 3 s (V (x s , u s ) + ξ − V (x s , u s ) − V x (x s , u s ) ξ )ν(dy)ds. ∫ 0 ∫ y ≤ c

Using deﬁnition of LV, I 1 , I 2 y (H3) we have:

t t s Ee c 3 V(x t , u t ) = V(x 0 , u 0 ) + E( c 3 e c 3 (V(x s , u s )ds + LV(x s , u s )ds)) ∫ 0

(26)

Considering hypothesis i), ii) and V (x 0 , u 0 ) ≤ V (x 0 , u 0 )e c 3 t :

t EV(x t , u t ) ≤ V(x 0 , u 0 ) + E( c 3 (f 0 (x s , u s ) − f 0 (x 0 , u o ))ds − c 2 r( || x t , ¯x s || )ds)) (27) ∫ 0

then, since x t , u t , r(x t , G t ), F t are super martingale, the process { V(x t , u t ) t1  ∫ 0 r(x s , G s )ds : t ≥ 0 } is also a super 
martingale and (27) implies the conclusion. 

z2 2  Example 1 Let consider the Poisson process given by ξ (t, x(t−), z) = sign(z) 1+z and deﬁne V (x, t) = u 2 1 (t) || x(t) − ¯x || 2 . The 
corresponding diﬀusion operator LV (x, t) is:

x(t) − ¯x || 2 ¯x || x(t) LV (x, t) = − || 3 + 2 || 2 ⊤ g(t, x, u)) f(t, x, u) + trace(g ( u (t) u (t) )

x(t) − ¯x || 2 z 2 z 4 +x(t)u(t) || 2 sign(z) 2 + 2 2 νdz. ∫ | z | <c ( u (t) 1 + z (1 + z ) )

The conditions of Theorem 3 are satisﬁed, obtaining the stochastic dissipation of (1).

3 Conclusion

In this paper, we study an optimal control problem applied to a Lotka-Volterra controlled model with L’evy jumps. We show that its solutions exhibit 
the Turnpike property via the stochastic maximum principle. We show that, under the existence of a Lyapunov function satisfying the boundedness 
conditions, the studied model is stochastically dissipative. We perform a simulation of the results.

References

[1] Chapman, D.G. (1967). Stochastics model in animal population ecology. Proc.

Fifth Berkeley Symposium on Mathematical Statistics and Probability, 4, 147–162. Berkeley University of California Press.

[2] Woyczy´nski, W. (2001). L´evy processes in the physical sciences, in L´evy processes.

O.E. Barndorﬀ-Nielsen et al.(eds.). Birkhauser Boston.

[3] Tr´elat, E., E. Zuazua. (2015). The turnpike property in ﬁnite-dimensional nonlinear optimal control, J. Diﬀ. Equ. 258, pp. 81-114.

[4] Bao, J., Mao, X. (2011). Competitive LotkaVolterra population dynamics with jumps. Nonlinear Analysis 74 (2011), pp. 6601-6616

[5] Bao, J., Yuan, C. (2012). Stochastic population dynamics driven by L´evy noise, J.

Math. Anal. Appl., 391 (2), pp. 363-375.

[6] Romero-Mel´endez, C., Castillo-Fern´andez, D., Gonz´alez-Santos, L. (2021). On the Boundedness of the Numerical Solutions Mean Value in a 
Stochastic Lotka-Volterra Model and the Turnpike Property. Complexity Journal 2021.

[7] Oksendal, B., Sulem, A. (2007). Applied Stochastic Control of Jump Diﬀusions.

Springer-Verlag Berlin Heidelberg.

[8] Sun, J., Wang, H., Yong, J. (2022). Turnpike Properties for Stochastic LinearQuadratic Optimal Control Problems. Chin. Ann. Math. Ser. B 43, 
999-1022.

[9] Applebaum, D., Siakalli, M. (2009) Asymptotic stability of stochastic diﬀerential equations driven by L´evy noise, Journal of Applied 
Probability, 46 (4), pp. 1116-1129


