let n = Int(readLine()!)!
var sum = 0

var dp = [Int]()
for o in 1...n{
    dp.append(o)
}

for i in 2..< n-1 {
    dp[i] = dp[i-1] + dp[i-2]
}
print(dp[n])

// dp[1]=0;
// int f(int x){ // f(x) : dp[x]
// 	if(dp[x]!=0) return dp[x];
// 	if(x==1) return 0;
// 	int ret=INF; // INF = 987654321
// 	if(x%3==0) ret=min(ret, f(x/3)+1);
// 	if(x%2==0) ret=min(ret, f(x/2)+1);
// 	ret=min(ret, f(x-1)+1);
// 	return dp[x]=ret;
// }