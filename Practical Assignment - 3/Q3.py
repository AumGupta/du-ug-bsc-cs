'''
Program by Om Gupta 214047
'''

from math import factorial


def nCr(n,r):
    if r>n:
        return 0
    return factorial(n)//(factorial(r)*factorial(n-r))


def main():
    print(nCr(1,2))


if __name__ == "__main__": 
    main()