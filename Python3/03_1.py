def f(A, x):

    result = A[0]
    for i in range(len(A)-1):
        result = result*x + A[i+1]
    return result


def abs(x):
    return x if x > 0 else -x


def goodenough(result):

    if abs(result) < 0.001:
        return True
    return False


def improve(A, a, b, result):

    if f(A, a)*result > 0:
        a, b = (a+b)/2, b
    else:
        a, b = a, (a+b)/2
    guess = (a+b)/2
    return (a, b, guess)


def binSerach(A, a, b, guess):

    result = f(A, guess)
    if goodenough(result):
        return guess
    print a, b, guess
    a, b, guess = improve(A, a, b, result)
    guess = binSerach(A, a, b, guess)
    return guess

A = [3, -1, -3, 1]
a = -0.5
b = 0.5
guess = (a+b)/2
# x = 1
# print f(a,x)
print float("%0.2f" % binSerach(A, a, b, guess))
