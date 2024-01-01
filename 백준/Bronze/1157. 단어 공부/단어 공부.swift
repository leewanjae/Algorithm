import Foundation

let words = readLine()!.uppercased()
var counts = [Character: Int]()

for word in words {
    counts[word, default: 0] += 1
}

if let maxCount = counts.values.max() {
    let maxChars = counts.filter { $0.value == maxCount }.map { $0.key }
    print(maxChars.count > 1 ? "?" : maxChars[0])
}

