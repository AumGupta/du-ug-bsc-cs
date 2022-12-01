'''
Program by Om Gupta 214047
'''

def fibonacci(n):
    if (n<3):
        for i in range(n):
            print(1, end=' ')
    else:
        a=b=1
        for i in range(n):
            print(a,b,end=' ')
            a=a+b
            b=b+a


def main():
    fibonacci(5)

    
if __name__ == "__main__": 
    main()