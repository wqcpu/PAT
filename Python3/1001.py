num = 3
count = 0
while num != 1:
    if num/2==0:
        num /= 2
    else:
        num = (3 * num +1)
        num /= 2
    count = count +1
print count
