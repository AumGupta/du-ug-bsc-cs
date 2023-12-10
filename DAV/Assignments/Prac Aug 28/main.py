"""
28 Aug 2023 Practical Assignment

Implement attributes and methods, isiterable, import function,
Binary operators and scalar types as done in class.
"""

# Importing a function
import addition
print(addition.add(1,2))

# Multiline strings
string = """
Hello 
my friend
"""
print("Lines =",string.count('\n'))

# Binary Operators
a = [1,2,3]
b = a
c = list(a)

print('a is b =',a is b,'\n',
      'a is c =',a is c,'\n',
      'b is c =',b is c)

# Implementation of isIterable function
def isIterable(string):
    return hasattr(string,'__iter__')

if isIterable(string):
    print('String is iterable')
else:
    print('String is NOT iterable')

# Using scalars
s1 = 2
s2 = 5
s3 = 'Hello'
s4 = ' World'
# Operations on Scalars
print(s1//s2)
print(s2**s1)
print(s3+s4)