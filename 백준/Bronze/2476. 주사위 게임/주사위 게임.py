line = int(input())
money = []
for _ in range(line):
    num = list(map(int, input().split()))
    a, b, c = num

    if a == b == c:
        money.append(10000 + (a * 1000))
    elif a == b or b == c or a == c:
        if a == b or a == c:
            same_eye = a
        else:
            same_eye = b
        money.append(1000 + (same_eye * 100))
    else:
        money.append(max(num) * 100)

print(max(money))
