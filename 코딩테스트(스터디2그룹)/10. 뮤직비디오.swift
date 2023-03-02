import Foundation

func count(capacity: Int)->Int{
    var cnt = 1
    var sum = 0
    for i :Int in music{
        if sum+i>capacity{
            cnt = cnt + 1
            sum = i
        }
        else{
            sum = sum + i
        }
    }
    return cnt
}
func sum(numbers: [Int]) -> Int {
  return numbers.reduce(0, +)
}

let n = readLine()!.split(separator: " ").map{Int($0)!}
var music=Array(readLine()!.split(separator: " ").map{Int($0)!})

//n[1]에 노래를 담는데 그 중 노래 길이가 최소인 것
var lt: Int = music.min() ?? 0
var rt = sum(numbers: music)

var res=0
//mid가 하나의 디비디에 담길 음악의 길이
while (lt<=rt){
    let mid=(lt+rt)/2
    if count(capacity : mid)<=n[1]{
        res = mid
        rt = mid - 1
    }
    else{
        lt = mid + 1
    }
}
print(res)