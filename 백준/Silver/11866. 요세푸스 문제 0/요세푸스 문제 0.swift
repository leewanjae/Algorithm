import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let totalPeople = input[0] // 전체 사람 수
let eliminationStep = input[1] // 제거되는 사람의 간격

// 1부터 시작하는 사람들의 번호를 가진 배열
var peopleQueue = Array(1...totalPeople)
var eliminationOrder = [Int]() // 제거 순서를 저장할 배열

var currentIndex = 0 // 현재 제거될 사람의 인덱스

while !peopleQueue.isEmpty {
    // 원형 구조를 모방하기 위해 현재 인덱스에 간격을 더하고 배열 길이로 나머지 연산을 수행
    // 간격대로 하나하나 날리기.
    // 날린 사람의 인덱스 위치에서 다시 숫자 카운트해서 날리기
    currentIndex = (currentIndex + eliminationStep - 1) % peopleQueue.count
    eliminationOrder.append(peopleQueue.remove(at: currentIndex)) // 제거 순서 배열에 추가
}

// 요세푸스 순열 출력
print("<\(eliminationOrder.map { String($0) }.joined(separator: ", "))>")
