from math import pi,pow

def area_triangle(b,h):
    """Returns area of triangle of height `h` & base `b`"""
    return 0.5*b*h

def area_rec(l,b):
    """Returns the area of rectangle"""
    return l*b

def area_square(s):
    """Returns area of square of side `s`"""
    return s*s;

def main():
    length = int(input("Enter Length: "))
    assert length>0
    breadth = int(input("Enter Breadth: "))
    assert breadth>0
    print("Area of Rectangle =",area_rec(length, breadth))

    base = int(input("Enter Base: "))
    assert base>0
    height = int(input("Enter height: "))
    assert height>0
    print("Area of Triangle =",area_triangle(base, height))

    side = int(input("Enter Side of Square: "))
    assert side>0
    print("Area of square =",area_square(side))

if __name__ == '__main__':
    main()