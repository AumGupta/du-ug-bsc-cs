'''
Program by Om Gupta 214047
'''

def add(a,b):
    return a+b


def sub(a,b):
    return a-b


def mul(a,b):
    return a*b


def div(a,b):
    return a/b


def rem(a,b):
    return a%b


def calculator():
    choice = 'y'
    while choice.lower()=='y':
        c = int(input("\t1) ADDITION\n\t2) SUBTRACTION\n\t3) MULTIPLICATION\n\t4) QUOTIENT\n\t5) REMAINDER\nEnter Your Choice:"))
        a = float(input("Enter 1st Number: "))
        b = float(input("Enter 2nd Number: "))
        d = {1:add(a,b), 2:sub(a,b), 3:div(a,b), 4:mul(a,b), 5:rem(a,b)}
        print("\nResult: ", d[c])
        choice = input("\nDo you want to continue? (Y/N): ")


def main():
    calculator()

    
if __name__ == "__main__": 
    main()