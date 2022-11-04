a = int(input("Enter the value of A: "))
b = int(input("Enter the value of B: "))
c = a+b
print(a)
print("A value type is: ", type(a))

a = float(a)
b = float(b)
c = a+b
print(b)
print("B value type is: ", type(b))

a = int(a)
b = int(b)
c = a+b
print(c)
print("Total as integer type: ", c)
print(type(c))
print("Total as string type: " + str(c))
print(type(str(c)))
