'''
8.Write a Python program to perform the following using list:
    a) Check if all elements in list are numbers or not.
    b) If it is a numeric list,then count number of odd values in it.
    c) If list contains all Strings,then display largest String in the list.
    d) Display list in reverse form.
    e) Find a specified element in list.
    f) Remove the specified element from the list.
    g) Sort the list in descending order.
    h) accept 2 lists and find the common members in them.

Program by Om Gupta 214047
'''

def is_num(ls) -> bool:
    '''
    Check for a numberic list.

    :param list ls: List 
    :rtype: bool
    '''
    return all(isinstance(x,int)|isinstance(x,float) for x in ls)

def odd_val_count(ls):
    assert is_num(ls), "List should contain all numeric elements." 
    return sum(1 for x in ls if x%2!=0)

def largest_string(ls):
    '''
    Returns longest string in list  `ls`
    '''
    assert all(isinstance(x,str) for x in ls), "List should contain all string elements." 
    return max(ls, key = len)

def reverse(ls):
    return ls[::-1]

def find(e, ls):
    if e in ls:
            return ls.index(e)
    return -1

def delete(e, ls):
    if e in ls:
        ls.remove(e)

def sort_des(ls):
    ls.sort(reverse = True)
    return ls

def common():
    l1 = input_list(1)
    l2 = input_list(2)
    return [x for x in l1 if x in l2]

def input_list(s = '')->list:
    l = []
    n = int(input("Enter number of elements in list "+str(s)+": "))
    print("Enter elements in list "+str(s)+" : ")
    for i in range(n):
        l.append(input())
    return l

def main():
    while (True):
        choice = int(input("\t1) Check is num\n\t2) Count odd value in Numeric list\n\t3) Find longest string in String List\n\t4) Reverse a List\n\t5) Find element in list\n\t6) Delete element in list\n\t7) Sort list in Descending  \n\t8) Find common members in two list \n\t9) Exit \nENTER YOUR CHOICE (1-6): "))
        if choice == 1:
            print(is_num())
            l = input_list()
            if (is_num(l)):
                print("Given list is Numeric")
            else:
                print("Given list is NOT Numeric")
        elif choice == 2:
            l = input_list()
            print("Number of odd members = %d"%odd_val_count(l))
        elif choice == 3:
            l = input_list()
            print("Longest string = ",largest_string(l))
        elif choice == 4:
            l = input_list()
            print("Reversed list = ", reverse(l))
        elif choice == 5:
            l = input_list()
            e = input("Enter element to be searched: ")
            f = find(e,l)
            if (f == -1):
                print(e, "not found")
            else:
                print(e, "found at index", f)
        elif choice == 6:
            l = input_list()
            e = input("Enter element to be deleted: ")
            l = delete(e,l)
            print("List after deletion =",l)   
        elif choice == 7:
            l = input_list()
            print("Sorted list = ", sort_des(l))
        elif choice == 8:
            print("Common Members =",common())
        elif choice == 9:
            break
        else:
            "ERROR: Please chose from 1 to 9"

if __name__ == "__main__": 
    main()