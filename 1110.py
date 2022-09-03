n=int(input())
c=0
cnt=0
t=n
while True:
    k=[]
    if n<10:
        k.append(0)
        k.append(n)
        n2=k[0]+k[1]
        if n2>9:
            n2=n2%10
    else:
        k.append(n%10)
        n1=n-k[0]
        n1=int(n1/10)
        k.append(n1%10)
        temp=k[0]
        k[0]=k[1]
        k[1]=temp
        n2=k[0]+k[1]
        if n2>9:
            n2=n2%10
    n=k[1]*10+n2
    cnt+=1
    if t==n:
        break
print(cnt)

    
