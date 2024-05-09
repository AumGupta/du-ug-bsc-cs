'''
3.Write a Python function to find the nth term of Fibonacci sequence and its
factorial. Return the result as a list.
'''

def factorial(n):
    assert n > -1
    fac = 1
    for i in range(1,n+1):
        fac *= i
    return fac


def fib(n):
    '''
    Returns `n`th term of Fibonacci sequence & factorial of that `n`th term. 
    '''
    assert n>0
    fib=0
    a = 1
    for i in range(n-1):
        tmp = fib
        fib += a
        a = tmp
    return [fib,factorial(fib)]

def main():
    print(fib(10))

if __name__ == '__main__':
    main()