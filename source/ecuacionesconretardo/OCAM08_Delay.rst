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

1. INTRODUCTION
---------------

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

2. OPTIMAL CONTROL PROBLEMS WITH DELAYS IN STATE AND CONTROL
-------------------------------------------------------------

3. FIRST-ORDER NECESSARY OPTIMALITY CONDITIONS FOR UNDELAYED OPTIMAL CONTROL PROBLEMS WITH MIXED CONSTRAINTS
------------------------------------------------------------------------------------------------------------

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


