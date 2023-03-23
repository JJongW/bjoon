// A+B -5

while (true) {
    let a = readLine()!.split(separator: " ").map { Int(String($0))! }
    if (a[0] != 0) && (a[1] != 0) {
        print(a[0]+a[1])
    } else {
        break
    }
}
