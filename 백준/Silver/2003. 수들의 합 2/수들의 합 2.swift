import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]

let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
var count = 0

for i in 0..<N {
    var sum = 0
    for j in i..<N {
        sum += numbers[j]
        if M == sum {
            count += 1
            break
        }
    }
}

print(count)
