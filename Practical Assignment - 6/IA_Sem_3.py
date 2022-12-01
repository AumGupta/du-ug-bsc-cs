'''
***************************** BSc CS (Hons) *****************************
********************** SEC - Programming in Python **********************
*************************** Om Gupta - 214047 ***************************
'''

'''1. What will be the output of the following code?'''

'''
a)
1
2'''
print("\n\na)")
i = 1
while True:
    if i%3==0:
        break
    print(i)
    i+=1


'''b)
A
B
C
D'''
print("\n\nb)")
x = 'abcd'
for i in x:
    print(i.upper())


'''
c)
0
0
1
0
2'''
print("\n\nc)")
i = 0
while i<5:
    print(i)
    i +=1
    if i==3:
        break
    else:
        print(0)


'''
d)
0
1
2
3'''
print("\n\nd)")
x = 'abcd'
for i in range(len(x)):
    print(i)


"""e) 35"""
print("\n\ne)")
x,n = 0,5
for i in range(1, n+1):
    for j in range(1, i+1):
        for j in range(1, j+1):
            x+=1
print(x)

'''2. What will bw thw output of the following code snippet [x<<2] if x = 1?'''
'''Output: 4'''

'''3. Write python's smallest code to swap to integer variables.'''
a,b = 2,3
a,b = b,a

'''4. What will be the output on executing each of the statements, following the assignment statement:'''

address = 'A-35, Lake view road, Agra'

'''a) 26'''
print(len(address))

'''b) oad, Agr'''
print(address[17:-1])

'''c) A-35, Lake view road, Agra'''
print(address[-len(address):len(address)])

'''d) A-35, Lake view road, Agra'''
print(address[:-12]+address[-12:])

'''e) -1'''
print(address.find('delhi'))

'''f) a-35, lAKE VIEW ROAD, aGRA'''
print(address.swapcase())

'''g) ['A-35', ' Lake view road', ' Agra']'''
print(address.split(','))

'''h) False'''
print(address.isalpha())

'''# i) A-35, Lake view road, Delhi'''
print(address.replace('Agra', 'Delhi'))

'''j) 11'''
print(address.rfind('view'))

'''5. What output occurs for the following program for the following inputs?'''
the_max = int(input("Enter the upper limit: "))
the_sum = 0
extra = 0

for number in range(1, the_max):
    if number%2 and not number%3:
        the_sum += number
    else:
        extra += 1  # Line 1

print(the_sum)      # Line 2
print(extra)        # Line 3
'''
a) if input = 10, output from line 2?
12

a) if input = 11, output from line 3?
8'''