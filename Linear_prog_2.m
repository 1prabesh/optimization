% defining the mininize function
f=[2 -5];
lb=[100 50];
ub=[200 150];
A=[1 1];
B=[210];
[x,fval]=linprog(f,A,B,[],[],lb,ub);

% defining the next optimization problem
f=[ -1 -1/3];
a=[1 1 ; -1 -1; 1 -1 ;1 -1; 1 1/4 ; -1/4 -1];
b=[2 -1 2  2 1 1];
intlinprog(f,1, a,b); % 1 means 1st decision variable must be an integer

