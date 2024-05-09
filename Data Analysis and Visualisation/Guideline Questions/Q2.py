"""
Program by Om Gupta 214047

2. Write programs in Python using NumPy library to do the following:
        a.  Compute the mean, standard deviation, and variance of a two dimensional random integer array
            along the second axis.
        b.  Get the indices of the sorted elements of a given array.
            a. B = [56, 48, 22, 41, 78, 91, 24, 46, 8, 33]
        c.  Create a 2-dimensional array of size m x n integer elements, also print the shape, type and data
            type of the array and then reshape it into nx m array, n and m are user inputs given at the run time.
        d.  Test whether the elements of a given array are zero, non-zero and NaN. Record the indices of
            these elements in three separate arrays.
"""

import numpy as np

# a)
array =  np.random.randint(1,10,(np.random.randint(2,10),np.random.randint(2,10)))
print('Mean = ', np.mean(array, axis=1))
print('Standard Deviation = ', np.std(array, axis=1))
print('Variance = ', np.var(array, axis=1)) 

# b)
B = np.array([56, 48, 22, 41, 78, 91, 24, 46, 8, 33])
print(np.argsort(B))

# c)
m = int(input('Enter the value of m: '))
n = int(input('Enter the value of n: '))
array2= np.random.randint(1,10, (m,n))
print(array2.shape)
print(type(array2))
print(array2)

# d)
given_array = np.array([0, 12, 0, np.nan, 42, 0, 8, np.nan])

zero_indices = np.where(given_array == 0)[0]

non_zero_indices = np.where(given_array != 0)[0]

nan_indices = np.where(np.isnan(given_array))[0]

print("Indices of Zero Elements:", zero_indices)
print("Indices of Non-Zero Elements:", non_zero_indices)
print("Indices of NaN Elements:", nan_indices)