n = int(input())
a = (i for i in range(1, n+1))
for i in a:
    if i % 3 == 0 and i % 4 == 0:
        print(i)