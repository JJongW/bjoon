let N = Int(readLine()!)!
let arr = Array(1...N)
var bot = arr[0]
var hig = arr[0]
var sum = 0

while sum < N {
    for i in bot...hig {
        sum = sum + i
    }
    if sum < N {
            hig = hig + 1
    }
}
print(sum)