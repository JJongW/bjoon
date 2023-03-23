// 팩토리얼
import Foundation

let n = Int(readLine()!)!
if n == 0 {
    print("1")
} else {
    var k: Int = 1
    for i in 1...n {
        k = k * i
    }
    print(k)
}
