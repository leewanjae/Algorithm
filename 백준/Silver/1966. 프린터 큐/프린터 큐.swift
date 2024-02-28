import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
    let m = NM[1] // 타겟 문서의 인덱스
    var importants = readLine()!.split(separator: " ").map { Int(String($0))! } // 문서의 중요도
    var queue = [(Int, Int)]() // (중요도, 인덱스) 튜플을 저장하는 큐
    var result = 0 // 인쇄된 문서의 수

    // 큐 초기화: 각 문서의 중요도와 인덱스를 튜플로 묶어 저장
    for (index, important) in importants.enumerated() {
        queue.append((important, index))
    }

    // 중요도를 내림차순으로 정렬
    importants.sort(by: >)

    while !queue.isEmpty {
        let current = queue.removeFirst() // 큐의 첫 번째 문서를 확인
        if current.0 == importants.first { // 현재 문서가 가장 높은 중요도를 가진 문서인 경우
            result += 1 // 인쇄하고, 인쇄된 문서 수 증가
            importants.removeFirst() // 가장 높은 중요도 문서를 제거
            if current.1 == m { // 현재 문서가 타겟 문서인 경우
                print(result) // 인쇄 순서 출력
                break
            }
        } else {
            queue.append(current) // 현재 문서가 가장 높은 중요도가 아니면, 큐의 끝으로 이동
        }
    }
}
