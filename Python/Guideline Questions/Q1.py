'''
1.Write a function that takes the lengths of three sides: side1 ,side2 and side3 of
the triangle as the input from the user using input function and return the area
and perimeter of the triangle as a tuple. Also, assert that sum of the length of any
two sides is greater than the third side.
'''

from cmath import sqrt


def tri_area_peri():
    side1 = float(input("Enter Side 1 of Triangle: "))
    side2 = float(input("Enter Side 2 of Triangle: "))
    side3 = float(input("Enter Side 3 of Triangle: "))
    
    assert (side1+side2>side3) & (side2+side3>side1) & (side3+side1>side2)

    semi_perimeter = (side1+side2+side3)/2
    area = sqrt(semi_perimeter*(semi_perimeter-side1)*(semi_perimeter-side2)*(semi_perimeter-side3))

    return area,semi_perimeter*2

def main():
    print(tri_area_peri())

if __name__ == "__main__":
    main()