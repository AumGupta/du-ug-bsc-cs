'''
Q3. Write a python program to count number of vowels using sets in given streing.

Program by Om Gupta 214047
'''

def main():
    str = input("Enter a string: ")
    vowels = {'a','e','i','o','u'}
    count = 0
    for  x in str:
        if x.lower() in vowels:
            count+=1
    print("Number of vowels in %s is %d"%(str,count))


if __name__ == "__main__": 
    main()

