// 단어 정렬
// 알파벳 소문자로 이루어진 N개의 단어가 들어오면 아래와 같은 조건에 따라 정렬하는 프로그램
// 길이가 짧은 것부터
// 길이가 같으면 사전 순으로
// 단, 중복된 단어는 하나만 남기고 제거한다.

let n = Int(readLine()!)!
var dict =  [String : Int]()

for _ in 0..< n {
    let word = readLine()!
    dict[word, default: 0] += 1
}

var sortedDict = dict.sorted {
    $0.key.count == $1.key.count ? $0 < $1 : $0.key.count < $1.key.count
}

for i in 0..< sortedDict.count {
    print("\(sortedDict[i].key)")
}