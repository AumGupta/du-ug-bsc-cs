'''
5.Write a function that finds the sum of the n terms of the following series.
Import the factorial function created in question 3.
1-x2/2!+x4/4!-x6/6!+...xn/n!

Program by Om Gupta 214047
'''

from Q3 import factorial

def sequence_sum_n(x,n):
    sum = 0
    for i in range(n):
        sum += pow(-1,i)*pow(x,(2*i))/factorial(2*i)
    return sum

def main():
    print(sequence_sum_n(2,3))

if __name__ == "__main__": 
    main()


    