'''
10.Write a function that takes a sentence as input from the user and calculates 
the frequency of each letter. Use a variable of dictionary type to maintain the
count.

Program by Om Gupta 214047
'''

def letter_count(sentance: str)->dict:
    '''
    Returns dictionary with keys as characters in string `sentance` and values as their frequencies.

    :param str sentance: String form user
    :rtype: dict
    '''
    dic = {}
    for i in sentance:
        if i not in dic:
            dic[i] = 1
        else:
            dic[i] += 1
    return dic
    

def main():
    string = "Hello my name is Om" 
    # Output: {'H': 1, 'e': 2, 'l': 2, 'o': 1, ' ': 4, 'm': 3, 'y': 1, 'n': 1, 'a': 1, 'i': 1, 's': 1, 'O': 1}
    print(letter_count(string))

if __name__ == "__main__": 
    main()