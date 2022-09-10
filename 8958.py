# "OOXXOXXOOO"와 같은 OX퀴즈의 결과가 있다. O는 문제를 맞은 것이고, 
# X는 문제를 틀린 것이다. 문제를 맞은 경우 그 문제의 점수는 그 문제까지 연속된 O의 개수가 된다. 
# 예를 들어, 10번 문제의 점수는 3이 된다.
# "OOXXOXXOOO"의 점수는 1+2+0+0+1+0+0+1+2+3 = 10점이다.
# OX퀴즈의 결과가 주어졌을 때, 점수를 구하는 프로그램을 작성하시오.
n=int(input())
count_o=0
count=0
p=[]
for _ in range(n):
    s=input()
    p.append(s)

for i in range(n):
    l=list(p[i])
    m=len(l)
    count=0
    count_o=0
    for i in range(m):
        if l[i]=="O":
            count_o+=1
            count+=count_o
        elif l[i]=="X":
            count_o=0
    print(count)