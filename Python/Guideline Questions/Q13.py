'''
13.Write a program that makes use of a function to display sine,cosine, 
polynomial and exponential curves.

Program by Om Gupta 214047
'''

import matplotlib.pyplot as plt
import numpy as np

def plotF(a, b, step, coeffs=[1,2,3]):
    nSteps = int((b-a)//step)
    x= [a+step*i for i in range(nSteps-1)]
    y1 = [np.sin(c) for c in x]
    y2 = [np.cos(c) for c in x]
    y3 = [np.exp(c) for c in x]
    y4 = np.array([np.sum(np.array([coeffs[i]*(j**i) for i in range(len(coeffs))])) for j in x])
    fig, axs = plt.subplots(2,2)
    axs[0, 0].plot(x, y1, label = "sin(x)" )
    axs[0, 0].legend(loc = 'upper right')
    axs[0, 1].plot(x, y2, 'r--', label = "cos(x)" )
    axs[0, 1].legend(loc = 'upper right')
    axs[1, 0].plot(x, y3, 'y:', label = "exp(x)" )
    axs[1, 0].legend(loc = 'upper right')
    axs[1, 1].plot(x, y4, 'g-.', label = "polynomial(x)" )
    axs[1, 1].legend(loc = 'upper right')
    fig.suptitle('Plot for sin, cos, exponential & polynomial Functions')
    plt.savefig("Q13_output.png")
    plt.show()

def main():
    plotF(-4*np.pi, 4*np.pi, 0.1)
    
if __name__ == "__main__": 
    main()