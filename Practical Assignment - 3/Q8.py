'''
Program by Om Gupta 214047
'''

def print_primes(a,b):
    assert a>0
    assert b>=a
    for i in range(a,b+1):
        for j in range(2,i):
            if i%j == 0:
                break
        else:
            print(i)


def main():
    print_primes(3,15)


if __name__ == "__main__": 
    main()