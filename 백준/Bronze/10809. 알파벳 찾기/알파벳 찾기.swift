import Foundation

let words = readLine()!
var box = [Int](repeating: -1, count: 26)

for (index, element) in words.enumerated() {
    let ascii = Int(element.asciiValue!) - Int(Character("a").asciiValue!)
    if box[ascii] == -1 {
        box[ascii] = index
    }
}

box.forEach { print($0, terminator: " ") }
