// 행렬 덧셈

let num = readLine()!.split(separator: " ").map { Int(String($0))! }
var arrayA = [[Int]]()
var arrayB = [[Int]]()
var arrayC = [[Int]]()

for _ in 0...num[0]-1 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    arrayA.append(input)
}
for _ in 0...num[0]-1 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    arrayB.append(input)
}
func solutionA(_ arrayA:[[Int]], _ arrayB:[[Int]]) -> [[Int]] {
    return zip(arrayA, arrayB).map{zip($0,$1).map{$0+$1}}
}
arrayC = solutionA(arrayA, arrayB)
for i in 0...num[0]-1 {
    for j in 0...num[1]-1 {
        if j != num[1]-1 {
            print(arrayC[i][j], terminator: " ")
        } else {
            print(arrayC[i][j])
        }
    }
}