"""
3.  Create a dataframe having at least 3 columns and 50 rows to store numeric data generated using a random
    function. Replace 10% of the values by null values whose index positions are generated using random function.
    Do the following:
        a. Identify and count missing values in a dataframe.
        b. Drop the column having more than 5 null values.
        c. Identify the row label having maximum of the sum of all values in a row and drop that row.
        d. Sort the dataframe on the basis of the first column.
        e. Remove all duplicates from the first column.
        f. Find the correlation between first and second column and covariance between second and third
        column.
        g. Detect the outliers and remove the rows having outliers.
        h. Discretize second column and create 5 bins
"""

import numpy as np
import pandas as pd

rows = 50
cols = 3
data = np.random.randint(1,10,(rows,cols))
# data = (np.random.rand(rows,cols)*10).round(1)
df = pd.DataFrame(data)
print("Initial Dataframe:\n",df)

while True:
    if df.isnull().sum().sum() == int((rows*cols)*(0.10)):
        break
    r = np.random.randint(rows)
    c = np.random.randint(cols)
    if df.iloc[r,c] == None:
        continue
    else:
        df.iloc[r,c] = None

print("Final dataframe:\n", df)

# a. Identify and count missing values in a dataframe.
null_count = df.isnull().sum().sum()
print("Null count in new dataframe: ",null_count)

# b. Drop the column having more than 5 null values.
df = df.dropna(thresh=rows - 5, axis=1)
print("Final Dataframe:\n",df)
# SOLUTION WITHOUT FUNC
# for i in range(cols):
#     col_null_count = df[i].isnull().sum()
#     print(f"Null count in column {i} is {col_null_count}")
#     if col_null_count>5:
#         # df.drop([i], axis=1,inplace=True)
#         df.drop([i], axis=1)
#         print(f"Column {i} dropped since had more than 5 nulls")
# print("Final Dataframe:\n",df)

# c. Identify the row label with the maximum sum and drop that row
max_sum_row_label = df.sum(axis=1).idxmax()
df = df.drop(max_sum_row_label)

# d. Sort the DataFrame based on the first column
df = df.sort_values(by=[0])

# e. Remove duplicates from the first column
df = df.drop_duplicates(subset=[0])

# f. Find the correlation between the first and second column
correlation = df[0].corr(df[1])
# Find the covariance between the second and third column
covariance = df[1].cov(df[2])

# g. Detect and remove outliers using z-scores (assuming a threshold of 2)
z_scores = (df - df.mean()) / df.std()
df = df[(z_scores.abs() < 2).all(axis=1)]

# h. Discretize the second column into 5 bins
df['Column2_bins'] = pd.cut(df[1], bins=5)
print("\nFinal DF\n",df)