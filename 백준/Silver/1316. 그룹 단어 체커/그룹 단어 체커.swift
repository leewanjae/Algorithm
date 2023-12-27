import Foundation

//각 단어를 순회하면서 현재 문자가 이전에 나왔는지 확인합니다.
//문자가 처음 나타나면 집합에 추가합니다.
//문자가 이미 집합에 존재하고, 바로 이전 문자가 아니라면 그 단어는 그룹 단어가 아닙니다.
//모든 단어에 대해 이 과정을 반복하고, 그룹 단어의 수를 세어 출력합니다.

let n = Int(readLine()!)!
var result = 0

// 한 단어씩 확인
for _ in 0..<n {
    let word = String(readLine()!)
    var charArr = [Character]() // 초기화 시점 확인
    var beforeChar: Character = " "
    var isGroupWord = true
    
    // 단어의 char 확인
    for char in word {
        if charArr.contains(char) && beforeChar != char {
            // 종료의 조건
            isGroupWord = false
            break
        } else {
            // 자 여기는 넣는겁니다.
            // 처음 들어가는거면 넣는겁니다.
            charArr.append(char)
            beforeChar = char
        }
    }
    // 그룹단어만 +1
    if isGroupWord {
        result += 1
    }
}
print(result)

// 간과한점
// 초기화 시점, forEach의 break 안되는 점
