'''
6.Consider a tuple t1 = (1,2,5,7,9,2,4,6,8,10). Write a program to perform following operations:
    a) Print another tuple whose values are even numbers in the given tuple.
    b) Concatenate a tuple t2 = (11,13,15) with t1.
    c) Return maximum and minimum value from this tuple.

Program by Om Gupta 214047
'''


def main():
    t1 = (1,2,5,7,9,2,4,6,8,10)
    t2 = (11,13,15)
    even_tuple = tuple([x for x in t1 if x%2==0])
    print(even_tuple)
    t1 += t2
    return min(t1), max(t1)

if __name__ == "__main__": 
    print(main())

    