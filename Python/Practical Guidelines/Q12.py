'''
12.Write a program that makes use of a function to accept a list of n integers and displays a histogram.

Program by Om Gupta 214047
'''

import matplotlib.pyplot as plt

def input_int(n):
    l = []
    for i in range(n):
        l.append(int(input("Enter integer-%d: "%(i+1))))
    return l

def display_histogram(l):
    counts, edges, bars = plt.hist(l)
    plt.bar_label(bars)
    plt.show()

def main():
    n = int(input("Enter value of `n`: "))
    display_histogram(input_int(n))

if __name__ == "__main__": 
    main()