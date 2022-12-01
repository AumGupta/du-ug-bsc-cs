'''
Program by Om Gupta 214047
'''

def rem_duplicates(l:list)->list:
    tmp = list(set(l))
    return tmp

def main():
    l = [1,1,2,3,4,4,4,4,5]
    new_l = rem_duplicates(l)
    print("Original List: %s \nFinal list: %s"%(l,new_l))

if __name__ == "__main__": 
    main()

