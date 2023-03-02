//창고 가로의 길이 자연수 L
let L = Int(readLine()!)!
//L개의 자연수 입력
var a=Array(readLine()!.split(separator: " ").map{Int($0)!})
//높이 조정 횟수 M
let M = Int(readLine()!)!

a.sort(by: <)

for _ in 0...M{
    a[0] += 1
    a[L-1] -= 1
    a.sort(by: <)
}
//M회의 높이 조정을 마친 후 max-min
print(a[L-1]-a[0]+1)