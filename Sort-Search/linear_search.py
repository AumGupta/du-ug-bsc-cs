'''
Program by Om Gupta 214047
'''

def linear_search(element, array):
    for i in array:
        if i == element:
            return array.index(i)
    return -1

    # One liner code:
    # return ([array.index(x) for x in array if x == element]+[-1])[0]

def main():
    l = [1,2,3,4,5]
    print(linear_search(2,l))
    print(linear_search(6,l))

    
if __name__ == "__main__": 
    main()

    