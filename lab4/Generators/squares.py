a = int(input())
b = int(input())
z = (i**2 for i in range(a, b + 1))
for i in z:
    print(i)