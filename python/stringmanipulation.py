# String Manipulation Program

s = "sample"
print("\n\n__________String Manipulation__________")
print("\n\n--------------------------------------")
print("Original string is   : " + s)
print("String type is       : " + str(type(s)))
print("--------------------------------------")
print("\n\n")
# Displays first two char from string
print("First two char from string           [0:2]   : " + s[0:2])
# Displays first five char from string
print("First five char from string          [:5]    : " + s[:5])
# Displays all character except first char
print("All character except first char      [1:]    : " + s[1:])
# Displays only last char from string
print("Only last char from string           [-1]    : " + s[-1])
# Displays second char in string reverse order
print("Second char in string reverse order  [-2:-1] : " + s[-2:-1])
# Displays all character except last char
print("All character except last char       [:-1]   : " + s[:-1])
# Displays all character in reverse order
print("All character in reverse order       [::-1]  : " + s[::-1])
print("\n\n")

print("----------Guid of output----------\n\t s   a   m   p   l   e\n\t 0   1   2   3   4   5\n\t-6  -5  -4  -3  -2  -1")
print("\n\n_______________________________________")
