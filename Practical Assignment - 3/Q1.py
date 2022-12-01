""" 
Q1. Find the sum of digits f a number.
Program by Om Gupta 214047
"""
def sum_of_digits(n: int) -> int:
    """Returns sum of digits of number `n`"""
    if (n==0):
        return n
    return n%10 + sum_of_digits(n//10)

def main():
    print(sum_of_digits(123))

if __name__ == "__main__":
    main()