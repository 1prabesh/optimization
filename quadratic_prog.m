% Quadratic programming for optimization
% Min= (1/2*x1^2)+x2^2-x1*x2-2x1-6x2
% s.t=x1+x2<=2
% 2x1+x2<=5

% defining the H matrix
H=[1 -1 ; -1 2]
f=[-2; -6 ]
A=[ 1 1 ; 2 1 ]
b=[2 5]

% calling the quadratic programming function
quadprog(H,f,A,b)
