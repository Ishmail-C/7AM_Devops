'''
IF else Statement in python
Write a program to check vote eligibility by enter his/her name and age
'''
name = input("Enter the name :")
age = int(input("Enter the age :"))
if age >= 18:
    print(name, "is eligible for voting, Because age is :", age)
else:
    print(name, "is not eligible for voting, Becaus age is :", age)
