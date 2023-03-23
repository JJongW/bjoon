// A+B-3
let testCase = Int(readLine()!)!

for _ in 0...testCase-1 {
    let a = readLine()!.split(separator: " ").map { Int(String($0))! }
    print(a[0]+a[1])
}
