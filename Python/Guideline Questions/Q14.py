'''
14.Write a function that reads a file file1 and copies only alternative lines to 
another file file2. Alternative lines copied should be the odd numbered lines.
Use Exception.

Program by Om Gupta 214047
'''
def main():
    try:
        f1 = open('file1.txt')
        f2 = open('file2.txt','w')
        for line in f1:
            f2.write(line)
            f1.readline()
        f2.close()
        f1.close()
    except IOError:
        print("file1.txt doesn't exists.")

if __name__ == "__main__": 
    main()