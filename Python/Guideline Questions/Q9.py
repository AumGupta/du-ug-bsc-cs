'''
9.Use dictionary to store marks of the students in 4 subjects. Write a function to
find the name of the student securing highest percentage.(Hint:Names of
students are unique).

Program by Om Gupta 214047
'''

def highest_marks(marks: dict)->str:
    '''
    Retruns name of student with heighest marks in `marks`
    '''
    return list(marks.keys())[list(marks.values()).index(max(marks.values()))]

def main():
    marks = {"Rahul":10, "Heymant":22, "Jigz":89, "Xortz":99}
    print(highest_marks(marks))

if __name__ == "__main__": 
    main()