// 특정 거리의 도시 찾기
// 어떤 나라에 1~N번까지의 도시와 M개의 단방향 도로가 존재함.
// 도시 X로부터 최단 거리가 K인 모든 도시의 번호를 출력
// BFS 문제

import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0] // 도시의 개수
let M = input[1] // 도로의 개수
let K = input[2] // 거리 정보
let X = input[3] // 출발 도시 번호

var graph = Array(repeating: [Int](), count: N+1) // N개에 해당하는 빈 배열 생성
var distance = Array(repeating: -1, count: N+1) // 거리를 저장하기 위한 거리 배열 생성
distance[X] = 0

for _ in 0..<M {
    let road = readLine()!.split(separator: " ").map{ Int($0)! } // 띄어쓰기를 기준으로 특정 도시에서 다음 도시로 향하는 도로가 있다는 것을  표시
    graph[road[0]].append(road[1]) // 0의 도시에서 1의 도시로 향한다는 것을 그래프 배열에서 추가함
}
var queue = [X] // 출발 도시에 해당하는 인덱스로 배열 생성

while !queue.isEmpty {
    let now = queue.removeFirst() // now에 현재 출발 도시의 인덱스의 값을 넣기
    for next in graph[now] {
        if distance[next] == -1 {
            distance[next] = distance[now] + 1
            queue.append(next)
        }
    }
}

var found = false

for i in 1...N {
    if distance[i] == K {
        print(i)
        found = true
    }
}

if !found {
    print(-1)
}

