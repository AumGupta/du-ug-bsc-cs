'''
Program by Om Gupta 214047

Do the following using PANDAS Series:
    a.  Create a series with 5 elements. Display the series sorted on index and also sorted on values seperately

    b.  Create a series with N elements with some duplicate values. Find the minimum and maximum ranks
        assigned to the values using 'first' and 'max' methods
    
    c.  Display the index value of the minimum and maximum element of a Series
'''
import pandas as pd
from random import randint


def main():
    # Create a Series with 5 elements
    data = {'C': 10, 'A': 5, 'D': 15, 'B': 7, 'E': 3}
    series = pd.Series(data)

    # Sort the Series by index
    sorted_by_index = series.sort_index()

    # Sort the Series by values
    sorted_by_values = series.sort_values()

    print("Sorted by Index:")
    print(sorted_by_index)

    print("\nSorted by Values:")
    print(sorted_by_values)


    # Create a Series with some duplicate values
    N = int(input("Enter an integer N: "))
    data = {i:randint(1,2) for i in range(N)}
    series1 = pd.Series(data)

    # Find minimum rank using 'first' method
    min_rank_first = series.rank(method='first').min()

    # Find maximum rank using 'max' method
    max_rank_max = series.rank(method='max').max()

    print("Minimum Rank (using 'first' method):", min_rank_first)
    print("Maximum Rank (using 'max' method):", max_rank_max)

    # Find the index of the minimum element
    min_index = series.idxmin()

    # Find the index of the maximum element
    max_index = series.idxmax()

    print("Index of Minimum Element:", min_index)
    print("Index of Maximum Element:", max_index)


if __name__ == "__main__": 
    main()