''' 
4.Write a function that takes a number (>=10) as an input and return the digits of
the number as a set.
'''

def digit_list():
    n = int(input("Enter a number (>=10): "))
    assert n>=10
    return set([int(i) for i in str(n)])

def main():
    print(digit_list())

if __name__ == '__main__':
    main()