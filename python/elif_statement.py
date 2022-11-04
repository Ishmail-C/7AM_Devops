'''
elif Statement in python

Write a program for Library book return penalty policy
<0      No fine
1-5     0.5
5-10    1
10-30   5
>30     Membership cancel
'''

days = int(input("Enter the days :"))
if (days <= 0):
    print("Good, No fine!! You returned book on-time")
elif (days >= 1 and days <= 5):
    print("Fine amount is : Rs", days*0.5)
elif (days > 5 and days <= 10):
    print("Fine amount is : Rs", days*1)
elif (days > 10 and days <= 30):
    print("Fine amount is : Rs", days*5)
else:
    print("Sorry!! your Membership cancelled")
