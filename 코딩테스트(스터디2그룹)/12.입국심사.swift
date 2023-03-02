func solution(n:Int, times:[Int])-> Int{
    var answer = 0
    // right는 가장 비효율적으로 심사했을 때 걸리는 시간
    // 가장 긴 심사시간이 소요되는 심사관에게 n 명 모두 심사받는 경우이다.
    var left = 1 
    var right = times.max() ?? 0 
    right = right * n
    while left <= right{
        let mid = (left + right)/2
        var people = 0
        for time in times{
            // people 은 모든 심사관들이 mid분 동안 심사한 사람의 수
            people = people + (mid / time)
            // 모든 심사관을 거치지 않아도 mid분 동안 n명 이상의 심사를 할 수 있다면 반복문을 나간다.
            if people >= n{
                break
            }
        }
        // 심사한 사람의 수가 심사 받아야할 사람의 수(n)보다 많거나 같은 경우
        if people >= n{
            answer = mid
            right = mid - 1
        }
        // 심사한 사람의 수가 심사 받아야할 사람의 수(n)보다 적은 경우
        else if people < n{
            left = mid + 1
        }
    }
    return answer
}
let n = Int(readLine()!)!
var m = Array(readLine()!.split(separator: " ").map{Int($0)!})

print(solution(n: n, times: m))