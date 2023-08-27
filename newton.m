% newton raphson method
function x=newton(f,x0,tol,maxit)
    % setting inital value
    x=x0;
    fx=f(x);
    % entering the loop for finding root
    for i=1:maxit
        %checking if intial point is solution or not
        if abs(fx)<tol % after completion of every interation from ((****)) it will check whether the error is less than tol or not
            disp('we found the solution')
            break;
        end
        dx=1*exp(-6);
        fdx=derivative(f,x,dx);
        
        x=x-fx/fdx;
        fx=f(x);
        
    end
  %(****)
        
end
% making another function to find the derivative
function fdx=derivative(f,x,dx)
    df=f(x+dx)-f(x-dx);
    fdx=df/(2*dx);
end