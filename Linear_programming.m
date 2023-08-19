% Linear programming
clc
% define the objective function
z=[-6 -18 -72] % coeffecient of minimize function

% defining the constraint
S1_S2_S3=[7 4 2; -4 -11 -4; 2 4 19]
B=[60; -72;  100]
% defining the equality constraint
Eq_S=[0 -11 20]
Eq_b=[ -105 ] % value of equality constraint

% defining the lower bound
Lb=[ 0 10 0 ]
Ub=[500 25 60 ]

% finding the optimal solution of vector X
x= linprog(z,S1_S2_S3,B,Eq_S,Eq_b,Lb,Ub)
Optimal_value=z*x


