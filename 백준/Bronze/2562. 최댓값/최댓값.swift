import Foundation

var numbers = [Int]()

for _ in 0..<9 {
    let number = Int(readLine()!)!
    numbers.append(number)
}

let maxV = numbers.max()!
let maxIndex = numbers.firstIndex(of: maxV)!

print(maxV)
print(maxIndex + 1)
