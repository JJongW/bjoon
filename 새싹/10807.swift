// 개수 세기

let number = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int(String($0))! }
var integer = Int(readLine()!)!
var count = 0

for i in 0...number-1 {
    if array[i] == integer {
            count += 1
    }
}
print(count)