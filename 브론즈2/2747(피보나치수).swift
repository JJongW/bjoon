let n = Int(readLine()!)!
var sum = 0

var dp = [Int]
print(dp)
for i in 2...n {
    sum += i
    //dp[i] = dp[i-1] + dp[i-2]
}
//print(dp[n])