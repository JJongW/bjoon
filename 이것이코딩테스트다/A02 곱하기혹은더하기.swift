// 곱하기혹은더하기
// 그리디문제
var input: String = "03456"
var new = [Int]()

for char in input {
    new.append(Int(String(char))!)
}
print(new)

var result = new[0]

for i in 1..<new.count {
    let num = new[i]
    if (num <= 1 || result <= 1) {
        result += num
    }
    else {
        result *= num
    }
}

print(result)