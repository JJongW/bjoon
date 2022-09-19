# 흔한 수학 문제 중 하나는 주어진 점이 어느 사분면에 속하는지 알아내는 것이다. 
# 사분면은 아래 그림처럼 1부터 4까지 번호를 갖는다. 
# "Quadrant n"은 "제n사분면"이라는 뜻이다.

x=int(input())
y=int(input())

if x>0 and y>0:
    print(1)
elif x>0 and y<0:
    print(4)
else:
    if y>0:
        print(2)
    else:
        print(3)