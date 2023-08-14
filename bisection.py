import math
def bisection(f,a,b,maxit):
    
    fa=f(a)
    fb=f(b)
    if fa*fb>0:
        print('a and b has same sign')
        return None
    
    for i in range(maxit):
        c=(a+b)/2
        fc=f(c)
        if abs(fc)==0:
            print('Root found')
            break

        if fa*fc>0:
            a,fa=c,fc

        if fc*fb>0:
            b,fb=c,fc

    return c

funk=lambda x:x**2-math.exp(-x)-1
a=int(input('Enter initial guess: '))
b=int(input('Enter second guess: '))
root=bisection(funk,a,b,100)
print(f'The root of the equation is {root} and f(x)={funk(root)}')