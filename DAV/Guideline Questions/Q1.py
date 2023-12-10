"""
Program by Om Gupta 214047

1.  Given below is a dictionary having two keys 'Boys' and 'Girls' and having two lists of heights of five Boys and
    Five Girls respectively as values associated with these keys
        Original dictionary of lists:
        {'Boys': [72, 68, 70, 69, 74], 'Girls': [63, 65, 69, 62, 61]}
    From the given dictionary of lists create the following list of dictionaries:
        [{'Boys': 72, 'Girls': 63}, {'Boys': 68, 'Girls': 65}, {'Boys': 70, 'Girls': 69}, {'Boys': 69, 'Girls': 62}, {'Boys':74, 'Girls':61]
"""

# Given List
d = {'Boys':[72,68,70,69,74], 'Girls':[63,65,69,62,61]}

# Creating Desired List of Dictionaries
l = [{'Boys':d['Boys'][i],'Girls':d['Girls'][i]} for i in range(max(len(d['Boys']),len(d['Girls'])))]

# Desired Output
print(l)