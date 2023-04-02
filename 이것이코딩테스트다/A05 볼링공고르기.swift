// 이코테 기출문제 A05
// 볼링공 고르기
// 2019 SW 마에스트로 입학문제
// 시간 제한 1초
// 메모리 제한 128MB

// 볼링공 N개에 무게가 적혀있음. 공의 번호는 1번부터 순서대로 부여
// 같은 무게여도 다른 공으로 간주
let num = readLine()!.split(separator: " ").map{Int($0)!}
var N = num[0]
let M = num[1]
let K = readLine()!.split(separator: " ").map{Int($0)!}
var result = 0

var naming = Array(repeating: 0, count: 11)

for i in K {
    naming[i] += 1
}

for i in 1...M+1 {
    N -= naming[i]
    result += naming[i] * N
}

print(result)
