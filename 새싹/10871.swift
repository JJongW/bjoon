// X보다 작은 수

let number = readLine()!.split(separator: " ").map { Int(String($0))! }
let array = readLine()!.split(separator: " ").map { Int(String($0))! }
var outArray = [Int]()

for i in 0...number[0]-1 {
    if array[i] < number[1] {
        outArray.append(array[i])
    }
}
for i in 0...outArray.count-1 {
    if (i != outArray.count-1) {
        print(outArray[i], terminator: " ")
    } else {
        print(outArray[i])
    }
}