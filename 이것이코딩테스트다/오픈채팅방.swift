// 2019 kakao problem

import Foundation

func solution(_ record:[String]) -> [String] {
    // user : 유저 아이디(key)와 닉네임(value)을 담을 딕셔너리
    // message : Enter, Leave 메시지만 담을 배열
    var user = [String : String]()
    var message = [String]()
    
    record.forEach {
        let content = $0.split(separator: " ")
        let command = String(content[0]), uid = String(content[1])
        var name = ""
        
        // Enter 거나 Change 이면 user 딕셔너리에 유저아이디와 닉네임 넣기
        if command == "Enter" || command == "Change" {
            name = String(content[2])
            user.updateValue(name, forKey: uid)
        }
        
        // Enter 거나 Leave 이면 message 배열에 해당 메시지 넣기
        if command == "Enter" || command == "Leave" {
            message.append("\(command) \(uid)")
        }
    }
    
    return convertMessage(message, user)
}

// 영어 → 한글, 유저아이디 → 닉네임
func convertMessage(_ message: [String], _ user: [String : String]) -> [String] {
    var results = [String]()    // 변환된 메시지를 저장할 배열
    
    message.forEach {
        let content = $0.split(separator: " ")
        let command = String(content[0]), uid = String(content[1])
        
        // user 딕셔너리의 유저아이디 key 값인 닉네임 가져와서
        // Enter, Leave에 따라 메시지 생성
        if command == "Enter" {
            results.append("\(user[uid]!)님이 들어왔습니다.")
        } else if command == "Leave" {
            results.append("\(user[uid]!)님이 나갔습니다.")
        }
    }
    return results  // 메시지가 담긴 배열 반환
}