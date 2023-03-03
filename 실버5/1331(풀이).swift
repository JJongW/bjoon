//나이트 투어는 체스판에서 나이트가 모든 칸을 정확히 한 번씩 방문하며, 
//마지막으로 방문하는 칸에서 시작점으로 돌아올 수 있는 경로이다. 
//영식이는 6×6 체스판 위에서 또 다른 나이트 투어의 경로를 찾으려고 한다. 
//체스판의 한 칸은 A, B, C, D, E, F 중에서 하나와 1, 2, 3, 4, 5, 6 중에서 
//하나를 이어 붙인 것으로 나타낼 수 있다. 영식이의 나이트 투어 경로가 주어질 때, 
//이것이 올바른 것이면 Valid, 올바르지 않으면 Invalid를 출력하는 프로그램을 작성하시오.

// 입력 : 36개의 줄에 나이트가 방문한 순서대로 입력이 주어진다. 체스판에 존재하는 칸만 입력으로 주어진다.

import Foundation

let pos = [(-2, -1), (-2, 1), (-1, 2), (1, 2), (2, 1), (2, -1), (1, -2), (-1, -2)]
var chessBoard = Array(repeating: Array<Bool>(repeating: false, count: 6), count: 6)
var start: (x: Int, y: Int) = (0, 0)
var prev: (x: Int, y: Int) = (0, 0)
var end: (x: Int, y: Int) = (0, 0)
var nite = true

// 1. 나이트의 이동에서 문제가 있는지 확인
for i in 0..<36 {
    let axis = Array(readLine()!)
    let x = Int(axis[0].asciiValue!) - 65
    let y = Int(String(axis[1]))! - 1

    if i == 0 {
        chessBoard[x][y].toggle()
        start.x = x
        start.y = y
        prev.x = x
        prev.y = y
        continue
    } else {
        if i  == 35 {
            end.x = x
            end.y = y
        }

        nite = false
        for p in pos {
            let nx = prev.x + p.0
            let ny = prev.y + p.1

            if (0..<6).contains(nx) && (0..<6).contains(ny) {
                if nx == x && ny == y && !chessBoard[nx][ny] {
                    chessBoard[nx][ny].toggle()
                    prev.x = nx
                    prev.y = ny
                    nite = true
                    break
                }
            }
        }

        if !nite {
            break
        }
    }
}
// 2. 마지막 위치와 처음 위치를 확인
if nite {
    nite = false
    
    for p in pos {
        let nx = end.x + p.0
        let ny = end.y + p.1
        
        if (0..<6).contains(nx) && (0..<6).contains(ny) {
            if nx == start.x && ny == start.y {
                nite = true
                break
            }
        }
    }
}


print(nite ? "Valid" : "Invalid")