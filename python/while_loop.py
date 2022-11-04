'''
Looping statement in python

while loop
print all odd number in given range
print all even number in given range
'''
option = input("Want to print numbers in [odd/even]? : ")
f1 = int(input("Enter the number to begin :"))
f2 = int(input("Enter the number to end :"))

'''
# Both the methods working correctly
# Method 1
if (option == "even"):
    if f1 == 0:
        f1 += 1
    while f1 <= f2:
        if f1 % 2 == 0:
            print(f1)
            f1 += 1
        else:
            f1 += 1
            continue
else:
    while f1 <= f2:
        if f1 % 2 == 0:
            f1 += 1
            continue
        print(f1)
        f1 += 1
'''
# Method 2
if (option == "even"):
    if f1 == 0:
        f1 += 1
    if f1 % 2 == 0:
        while f1 <= f2:
            print(f1)
            f1 += 2
    else:
        f1 = f1+1
        while f1 <= f2:
            print(f1)
            f1 += 2
else:
    if f1 % 2 != 0:
        while f1 <= f2:
            print(f1)
            f1 += 2
    else:
        f1 = f1+1
        while f1 <= f2:
            print(f1)
            f1 += 2
