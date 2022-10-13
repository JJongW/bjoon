# 음식점의 계산을 도와주는 점원이다. 500, 100, 50, 10짜리 동전이 무수히 존재한다.
# 거슬러 줘야할 돈이 N원일 때 거슬러 줘야할 동전의 최소 개수를 구하라.
# 단 거슬러 줘야 할 돈 N은 항상 10의 배수이다. 

n=1260
count=0

coin_types=[500,100,50,10]

for coin in coin_types:
    count+=n
    n%=coin
    print(n)
    
print(count)