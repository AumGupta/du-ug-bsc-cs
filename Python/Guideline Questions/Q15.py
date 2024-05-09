'''
15.Define a class Student to store his/her name and marks in three subjects.
Use a class variable to store the maximum average marks of the class. Use
constructor and destructor to initialize and destroy the objects.
Program by Om Gupta 214047
'''

class Student:
    # Class Variables
    max_avg_marks = 0
    avg_mark_list = []

    # Constructor
    def __init__(self,name, mark1 = 0, mark2 = 0, mark3 = 0):
        self.name = name
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
        self.avg_marks = sum([mark1,mark2,mark3])/3
        self.__class__.max_avg_marks = max(self.__class__.max_avg_marks,self.avg_marks)
        self.__class__.avg_mark_list.append(self.avg_marks)
    
    # Destructor
    def __del__(self):
        try:
            self.__class__.avg_mark_list.remove(self)
        except:
            pass
        self.__class__.max_avg_marks = max(self.__class__.avg_mark_list)



def main():
    s1 = Student("Sia",10,10,10)
    s2 = Student("Rahul",50,50,50)
    s3 = Student("Ram",20,20,20)
    print("Student names: %s, %s, %s"%(s1.name,s2.name,s3.name))

    # Checking deletion
    print(Student.avg_mark_list)
    print(Student.max_avg_marks)
    del s2
    print(Student.avg_mark_list)
    print(Student.max_avg_marks)

if __name__ == "__main__": 
    main()