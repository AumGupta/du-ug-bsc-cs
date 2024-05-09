'''
7. Write a menu driven program to perform the following on strings:
    a) Find the length of string.
    b) Return maximum of three strings.
    c) Accept a string and replace all vowels with “#”
    d) Find number of words in the given string.
    e) Check whether the string is a palindrome or not.

Program by Om Gupta 214047 
'''

def length():
    str = input("Enter a string: ")
    print("Given string is %d characters long."%len(str))

def max_of_3():
    str1 = input("Enter String 1: ")
    str2 = input("Enter String 2: ")
    str3 = input("Enter String 3: ")
    max = str1 if str1>str2 else str2
    max = max if max>str3 else str3
    print("%s is the maximum of three entered strings."%max)

def vowels_to_hash():
    str = input("Enter a string: ")
    for x in str:
         if x.lower() in ['a','e','i','o','u']:
            str = str.replace(x,'#')
    print(str)

def word_count():
    str = input("Enter a string: ")
    print("There are %d words in given string."%len(str.split()))

def is_palindrome():
    str = input("Enter a string: ")
    length = len(str)
    if str[:length//2] == str[-1:length//2:-1]:
        print("Given string is Palindrome")
    else:
        print("Given string is NOT Palindrome")


def string_act():
    while (True):
        choice = int(input("\t1) Length of string\n\t2) Maximum of three strings\n\t3) Vowels to '#'\n\t4) Number of Words\n\t5) Palindrome Checker\n\t6) Exit\nENTER YOUR CHOICE (1-6): "))
        if choice == 1:
            length()
        elif choice == 2:
            max_of_3()
        elif choice == 3:
            vowels_to_hash()
        elif choice == 4:
            word_count()
        elif choice == 5:
            is_palindrome()
        elif choice == 6:
            break
        else:
            "ERROR: Please chose from 1 to 6"

def main():
    string_act()

if __name__ == "__main__":
    main()
