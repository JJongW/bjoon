#N개의 정수가 주어지면, 이 정수들의 합 S의 부호를 구하는 프로그램을 작성하시오.
import sys

for i in range(3):
    n=int(sys.stdin.readline().rstrip())
    cnt=0
    for j in range(n):
        k=int(sys.stdin.readline().rstrip())
        cnt+=k
    if cnt==0:
        print(0)
    elif cnt>0:
        print("+")
    else:
        print("-")