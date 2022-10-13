# 첫째 줄에 N(2<=N<=1000),M(1<=M<=10000),K(1<=K<=10000)의 자연수가 주어지며, 각 자연수는 공백으로 구분한다.
# 둘째 줄에 N개의 자연수가 주어진다. 각 자연수는 공백으로 구분한다. 단, 각각의 자연수는 1이 상 10000이하의 수로 주어진다.
# 입력으로 주어지는 K는 항상 M보다 작거나 같다.
N,M,K=map(int,input().split())
num=list(map(int,input().split()))

num.sort()
first=num[N-1]
second=num[N-2]

result=0

while True:
    for i in range(K):
        if M==0:
            break
        result+=first
        M-=1
    if M==0:
        break
    result+=second
    M-=1
print(result)

