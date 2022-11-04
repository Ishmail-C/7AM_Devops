# This program not running properly.
p1 = int(input("Enter First number to begin: "))
p2 = int(input("Enter Last number to end: "))
print("----------------------------------")
count = 0
if p1 < 1:
    print("First number should be positive")
elif p1 > 0:
    print("Prime numbers in given range are :")
    n = p1
    while n <= p2:
        k = 0
        i = 2
        while i <= n:
            if n % i == 0:
                k = 1
                i += 1
                n += 1
                continue
            else:
                i += 1
                n += 1
        if k == 0:
            count += 1
            print(n)
print("Total number of prime numbers is", count)
