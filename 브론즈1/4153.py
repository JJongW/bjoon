#직각삼각형
#과거 이집트인들은 각 변들의 길이가 3, 4, 5인 삼각형이 직각 삼각형인것을 알아냈다. 
#주어진 세변의 길이로 삼각형이 직각인지 아닌지 구분하시오.

lst=[]
while True:
    num=list(map(int,input().split()))
    lst.append(num)
    if lst[-1] == [0,0,0]:
        break

for k in range(len(lst)-1):
    temp=0
    sum=0
    for i in range(3):
        if temp<lst[k][i]:
            temp=lst[k][i]
            max=i
    for j in range(3):
        if max!=j:
            sum+=(lst[k][j]*lst[k][j])
    if sum==(temp*temp):
        print("right")
    else:
        print("wrong")