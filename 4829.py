b=0
n=1
n_l=list()
while(n!=0):
    n=int(input())
    n_l.append(n)
    b+=1
for i in range(0,b):
    if n_l[i]%2==0:
        if n_l[i]!=0:
            n1=(3*((3*n_l[i])/2))/9
            print("%d. even %d"%(i+1,n1))
    else:
        n2=(3*(((3*n_l[i])+1)/2))/9
        print("%d. odd %d"%(i+1,n2))
