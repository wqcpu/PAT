def Input():
    N, K = tuple( input().split(' '))
    K = int( K)
    E = []
    for i in range( K):
       temp =  input().split(' ')
       temp = [int(i) for i in temp]
       E.append( tuple(temp))
    return N,K,E
N,K,edges = Input()
print(N,K,edges)
