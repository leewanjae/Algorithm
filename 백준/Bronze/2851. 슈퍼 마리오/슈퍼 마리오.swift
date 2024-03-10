import Foundation

var score = 0
var sum = 0
var arr = [Int]()

for _ in 0..<10 {
    let mushroom = Int(readLine()!)!
    sum += mushroom
    arr.append(sum)
}

arr.sort { abs($0 - 100) > abs($1 - 100)}

print(arr.last!)
