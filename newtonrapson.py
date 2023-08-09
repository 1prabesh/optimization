import math

def funcderivative(f, x, dx=1e-6):
    dx=f(x+dx)-f(x-dx)
    return dx/(2*dx)


def newton(f,x0,tol=1e-10,maxit=100):

    x=x0    # intial point 
    fx=f(x) # calculating the intial function value at old point

    for i in range(maxit):
        if abs(fx)<tol:      # if already inital old point has the solution then we got the solution
            print('Tolerance hit')
            break

        fpx=funcderivative(f,x)     # if not then calulating the derivative of fx ( xn+1=xn-fx/f'x)
        x=x-fx/fpx
        if abs(fpx)<tol:
            print('Tolerance hit')
            break
    return x
        
funk=lambda x: x**2-x-math.cos(x)  # defining the function lamda and passing the lamda function in the newton function
x0=2
root=newton(funk,x0)
print(f'The root of the equation is :: {root} \n and the solution to the root f(x) is {funk(root)}')