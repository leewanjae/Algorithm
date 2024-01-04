import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[0], n = input[1]
var board = [[Character]]()

// 보드 상태 입력 받기
for _ in 0..<m {
    board.append(readLine()!.map { $0 })
}

var answer = 64

// 모든 8x8 영역을 검사
for y in 0...m - 8 {
    for x in 0...n - 8 {
        var count1 = 0
        var count2 = 0

        // 각 영역의 체스판 패턴에 따라 칠하는 횟수 계산
        for i in y..<y + 8 {
            for j in x..<x + 8 {
                if (i + j) % 2 == 0 {
                    if board[i][j] != "W" { count1 += 1 }
                    if board[i][j] != "B" { count2 += 1 }
                } else {
                    if board[i][j] != "B" { count1 += 1 }
                    if board[i][j] != "W" { count2 += 1 }
                }
            }
        }

        // 두 패턴 중 최소 변경 횟수 저장
        answer = min(answer, count1, count2)
    }
}

// 최소 변경 횟수 출력
print(answer)
