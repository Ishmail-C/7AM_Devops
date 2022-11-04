a = int(input("Enter the value of A : "))
b = int(input("Enter the value of B : "))
c = int(input("Enter the value of C : "))
print("Compare all are equal values : " + str(a == b and b == c and c == a))
print("Is A is highest value ?      : " + str(a >= b and a >= c))
print("NOT result, Is A is highest value? : " + str(not (a >= b and a >= c)))
print("Is A value is greater or less than B : " + str(a > b or b > a))
print("NOT result, Is A value is greater or less than B : " +
      str(not (a > b or b > a)))
