s = int(input())
sum = 0
count = 0
i = 1

while sum + i <= s:
    sum += i
    count += 1
    i += 1
print(count)