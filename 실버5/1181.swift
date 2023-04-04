// 단어 정렬
// 알파벳 소문자로 이루어진 N개의 단어가 들어오면 아래와 같은 조건에 따라 정렬하는 프로그램
// 길이가 짧은 것부터
// 길이가 같으면 사전 순으로
// 단, 중복된 단어는 하나만 남기고 제거한다.

// 문자별로 받아야하기에 배열로는 불가능하다. 따라서 딕셔너리를 활용해본다.
// 중복되면 안되기에 딕셔너리는 중복되는 단어가 있다면 가장 마지막 단어로 덮어씌우기에 적절한 자료형이다.

import Foundation

let n = Int(readLine()!)!
var dict =  [String : Int]() //딕셔너리 선언

for _ in 0..<n {
    let word = readLine()!
    dict[word, default: 0] += 1 // String으로 문장을 받고 받아지면 key값을 올림
}

var sortedDict = dict.sorted {
    $0.key.count == $1.key.count ? $0 < $1 : $0.key.count < $1.key.count //해당 key에 count를 통해 단어 갯수를 세고 구별
}

for i in 0..<sortedDict.count {
    print("\(sortedDict[i].key)") 
}