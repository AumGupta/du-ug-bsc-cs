'''
Q.2 Find the roots of a quadratic equation.
Program by Om Gupta 214047
'''

from cmath import sqrt


def main():
    a = int(input("Enter coefficient of x^2: "))
    assert a!=0
    b = int(input("Enter coefficient of x: "))
    c = int(input("Enter constant term: "))

    d = sqrt(b*b-4*a*c)
    roots = (-b+d)/(2*a),(-b-d)/(2*a)
    print("Roots =",roots)

if __name__ == "__main__": 
    main()