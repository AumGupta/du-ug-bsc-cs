'''
Program by Om Gupta 214047
'''

def insertion_sort(array):
    for i in range(len(array)):
        tmp = array[i]
        j = i-1
        while (j>=0 and array[j]>tmp):
            array[j+1] = array[j]
            j -= 1
        array[j+1] = tmp
    return array

def main():
    l = [2,1,4,5]
    print(l)
    l = insertion_sort(l)
    print(l)
if __name__ == "__main__": 
    main()

    