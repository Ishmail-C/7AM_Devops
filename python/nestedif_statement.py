'''
Nested if statement in python

Write a program and validate student result as below
3 marks as input
Total
Average
Result Pass/Fail
if Pass - grade
    90 - 100    A
    80 - 89     B
    70 - 79     C
    else        D
'''
m1 = int(input("Enter Mark-1 :"))
m2 = int(input("Enter Mark-2 :"))
m3 = int(input("Enter Mark-3 :"))
total = float(m1+m2+m3)
#average = total/3.00
average = float(format(round(total/3.0, 2)))
#average = format(round(average, 2))
print("Total :", total)
print("Average :", average)
if (m1 >= 35 and m2 >= 35 and m3 >= 35):
    print("Result : Pass")
    if (average >= 90 and average <= 100):
        print("Grade : A")
    elif (average >= 80 and average <= 89):
        print("Grade : B")
    elif (average >= 70 and average <= 79):
        print("Grade : C")
    else:
        print("Grade : D")
else:
    print("Result : Fail")
    print("Grade : No Grade")
