'''
11. Write a menu-driven program to accept a list of student names and perform
    the following
    a) search an element using linear search/binary search.
    b) Sort the elements using bubble sort/insertion sort/selection sort.


Program by Om Gupta 214047
'''

def linear_search(element, l: list)->int:
    for i in range(len(l)):
        if l[i] == element:
            return i
    return -1


def binary_search(element, array):
    low = 0
    high = len(array)-1
    while(low<=high):
        mid = (high+low)//2
        if array[mid] == element:
            return mid
        elif array[mid] > element:
            high = mid-1
        else:
            low = mid+1
    return -1


def insertion_sort(array):
    for i in range(len(array)):
        tmp = array[i]
        j = i-1
        while (j>=0 and array[j]>tmp):
            array[j+1] = array[j]
            j -= 1
        array[j+1] = tmp
    return array


def selection_sort(array):
    size = len(array)
    for i in range(size-1):
        min = i
        for j in range(i+1, size):
            if (array[j]<array[min]):
                min = j

        if (min != i):
            tmp = array[i]
            array[i] = array[min]
            array[min] = tmp
    return array


def bubble_sort(array):
    for i in range(len(array)-1):
        for j in range(len(array)-i-1):
            no_swap = True
            if array[j] > array[j+1]:
                tmp = array[j]
                array[j] = array[j+1]
                array[j+1] = tmp
                no_swap = False
        if no_swap:
            break
    return array


def main():
    l = []
    n = int(input("ENTER NUMBER OF STUDENTS: "))
    for i in range(n):
        l.append(input("Enter name of student-%d: "%(i+1)))
    while(True):
        c = int(input("\n1) Bubble Sort\n2) Selction Sort\n3) Insertion Sort\n4) Linear Search\n5)Binary Search\n6) Exit\nEnter your choice (1-6): "))
        
        if c == 1:
            l = bubble_sort(l)
            print(l)
        elif c == 2:
            l = selection_sort(l)
            print(l)
        elif c == 3:
            l = insertion_sort(l)
            print(l)
        elif c == 4:
            i = linear_search(input("\nEnter name of student to find: "), l)
            if i == -1:
                print("\nNot found\n")
            else:
                print(l[i], "found\n")
        elif c == 5:
            i = binary_search(input("\nEnter name of student to find: "), l)
            if i == -1:
                print("\nNot found\n")
            else:
                print(l[i], "found\n")
        elif c == 6:
            break
        else:
            print("\nERROR: Please chose from (1-6)\n")


if __name__ == "__main__": 
    main()