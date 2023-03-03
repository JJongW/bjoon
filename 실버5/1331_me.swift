//나이트 투어는 체스판에서 나이트가 모든 칸을 정확히 한 번씩 방문하며, 
//마지막으로 방문하는 칸에서 시작점으로 돌아올 수 있는 경로이다. 
//영식이는 6×6 체스판 위에서 또 다른 나이트 투어의 경로를 찾으려고 한다. 
//체스판의 한 칸은 A, B, C, D, E, F 중에서 하나와 1, 2, 3, 4, 5, 6 중에서 
//하나를 이어 붙인 것으로 나타낼 수 있다. 영식이의 나이트 투어 경로가 주어질 때, 
//이것이 올바른 것이면 Valid, 올바르지 않으면 Invalid를 출력하는 프로그램을 작성하시오.

// 입력 : 36개의 줄에 나이트가 방문한 순서대로 입력이 주어진다. 체스판에 존재하는 칸만 입력으로 주어진다.
// 두 가지 배열을 만들고 [0~5][0~5] 이를 [A~E][1~6]으로 치자
import Foundation

var chessBoard : [[Int]] = Array(repeating: Array(repeating: 1, count:6 ), count: 6)


for _ in 0...35 {
    let inputMap = readLine()!
    let width = inputMap[inputMap.startIndex]
    let height = inputMap[inputMap.index(before: inputMap.endIndex)]
    print(chessBoard)
    switch width {
    case "A":
        if checkNum(indexWidth: 0, indexHeight: height) == false {
            print("invalid")
            break
        }
    case "B":
        if checkNum(indexWidth: 1, indexHeight: height) == false {
            print("invalid")
            break
        }
    case "C":
        if checkNum(indexWidth: 2, indexHeight: height) == false {
            print("invalid")
            break
        }
    case "D":
        if checkNum(indexWidth: 3, indexHeight: height) == false {
            print("invalid")
            break
        }
    case "E":
        if checkNum(indexWidth: 4, indexHeight: height) == false {
            print("invalid")
            break
        }
    case "F":
        if checkNum(indexWidth: 5, indexHeight: height) == false {
            print("invalid")
            break
        }
    default:
        print("error")    
    }
}
print("valid")

func checkNum(indexWidth: Int, indexHeight: Character) -> Bool {
    switch indexHeight {
    case "1":
        if chessBoard[indexWidth][0] != 0 {
            chessBoard[indexWidth][0] = 0
            return true}
        else {return false}
    case "2":
        if chessBoard[indexWidth][1] != 0 {
            chessBoard[indexWidth][1] = 0
            return true}
        else {return false}
    case "3":
        if chessBoard[indexWidth][2] != 0 {
            chessBoard[indexWidth][2] = 0
            return true}
        else {return false}
    case "4":
        if chessBoard[indexWidth][3] != 0 {
            chessBoard[indexWidth][3] = 0
            return true}
        else {return false}
    case "5":
        if chessBoard[indexWidth][4] != 0 {
            chessBoard[indexWidth][4] = 0
            return true}
        else {return false}
    case "6":
        if chessBoard[indexWidth][5] != 0 {
            chessBoard[indexWidth][5] = 0
            return true}
        else {return false}
    default:
        print("error")
        return false
    }
}