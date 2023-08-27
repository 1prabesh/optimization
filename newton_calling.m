% calling the newton function
x0=2;
tol=1*exp(-16);
maxit=100;
func=@(x)  x^2-x-1;
x=newton(func, x0, tol,maxit);

disp(['  x:' num2str(x)])
disp([' f(x):' num2str(func(x))])