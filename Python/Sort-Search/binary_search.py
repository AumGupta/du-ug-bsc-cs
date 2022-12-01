'''
Program by Om Gupta 214047
'''

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

def main():
    l = [1,2,3,4,5]
    print(binary_search(5,l))
    print(binary_search(8,l))
    
if __name__ == "__main__": 
    main()

    