def square(n):
    """Returns the square of number `n`"""
    return n*n

def cube(n):
    """Returns the cube of number `n`"""
    return n*n*n

def main():
    n = float(input("Enter a Number: "))
    print("Square of",n,"is",square(n),"\nCube of",n,"is",cube(n))

if __name__ == "__main__":
    main()
