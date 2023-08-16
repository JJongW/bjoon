let n = 5
var data: [Int] = [1,2,4,2,3]
data.sort()

var result = 0
var count = 0

for i in data {
    count += 1
    if count >= i {
    result += 1
    count = 0
    }
}

print(result)