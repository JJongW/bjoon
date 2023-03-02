import Foundation

//let line = Int(readLine()!)!
//print(line)
let n = Int(readLine()!)!
var range = 1...n
let input = readLine()!.split(separator: " ").map{Int($0)!}
var array = [Int]()

func reverse(num: Int)-> Int{
    let k = String(num)
    let oper = String(k.reversed())
    let oper2 = Int(oper)
    return oper2!
}
for i in 0...n-1{
    let off = input[i]
    let comp = reverse(num : off)
    for i in 2...comp{
        if (comp % i == 0){
            break
        }
        else{
            array.append(comp)
            break
        }
    }
}
print(array, terminator: "")