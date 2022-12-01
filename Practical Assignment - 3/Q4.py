'''
Program by Om Gupta 214047
'''

def maximum(l):
    max = l[0]
    for i in l:
        if i>max:
            max=i
    return max


def main():
    l = [1,3,1,5,3,7]
    print(maximum(l))


if __name__ == "__main__": 
    main()