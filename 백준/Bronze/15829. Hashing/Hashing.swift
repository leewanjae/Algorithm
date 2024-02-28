import Foundation

// 소문자 a~z // 1~26
// abba => 1 2 2 1

// 소문자를 숫자로 변환한거 * 31의 제곱
// abcde
// 1 * 31의 0승 -> 31
// 2 * 31의 1승 -> 62
// 3 * 31의 2승 -> 2883
// 4 * 31의 3승 -> 119164
// 5 * 31의 4승 -> 4617605
let alpha: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

let n = Int(readLine()!)!
var str = readLine()!
var scores = [Int]()
var result = 0

for char in str {
    scores.append(contentsOf: alpha.enumerated().filter { $0.element == char }.map { $0.offset + 1 })
}

for (index, element) in scores.enumerated() {
    result += element * Int(pow(31, Double(index)))
}

print(result)

