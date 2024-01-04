import Foundation

let line = Int(readLine()!)!
var words = [String]()
for _ in 0..<line {
    words.append(readLine()!)
}

// 먼저 중복 제거
let uniqueWords = Set(words)

// 중복이 제거된 단어들을 정렬
let sortedWords = uniqueWords.sorted { a, b in
    if a.count == b.count {
        return a < b
    }
    return a.count < b.count
}

sortedWords.forEach { print($0) }
