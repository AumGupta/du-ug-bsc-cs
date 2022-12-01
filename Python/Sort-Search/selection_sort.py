'''
Program by Om Gupta 214047
'''

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


def main():
    l = [20,11,3,1]
    print(l)
    l = selection_sort(l)
    print(l)
    
if __name__ == "__main__": 
    main()

