// 2020 카카오 신입공채
// 문자열압축

import Foundation

let s = "aabbaccc"

func solution(_ s: String) -> Int {
    if s.count < 3 { return s.count }
    
    var result: Int = s.count
    
    for length in 1...s.count/2 {
        let slicedString = sliceString(s, length)
        let compressedString = compressString(slicedString)
        let length = compressedString.count
        if length < result { result = length }
    }
    
    return result
}

func sliceString(_ str: String, _ length: Int) -> [String] {
    var result: [String] = []
    var temp = ""
    
    for s in str {
        temp += String(s)
        if temp.count >= length {
            result.append(temp)
            temp = ""
        }
    }
    
    if temp != "" { result.append(temp) }
    return result
}

func compressString(_ array: [String]) -> String {
    var result: String = ""
    var temp: String = ""
    var count: Int = 1
    
    for str in array {
        if temp == str {
            count += 1
        } else {
            if temp != "" {
                result += (count > 1) ? "\(count)\(temp)" : "\(temp)"
            }
            temp = str
            count = 1
        }
    }
    
    if temp != "" { result += (count > 1) ? "\(count)\(temp)" : "\(temp)" }
    return result
}

print(solution(s))