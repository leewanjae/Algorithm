import Foundation

let target = Int(readLine()!)!
var creatorFound = false

// 가장 작은 생성사 찾기
for i in 1..<target {
    var sum = i // 생성자 후보
    let StringI = String(i) // 숫자를 문자열로 변환해서 각 자릿수에 쉽게 접근
    
    for char in StringI {
        if let digit = Int(String(char)) {
            sum += digit
        }
    }
    
    if sum == target {
        print(i)
        creatorFound = true
        break
    }
}

if !creatorFound {
    print(0)
}
