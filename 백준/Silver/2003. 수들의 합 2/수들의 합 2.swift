import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]

let sequence = readLine()!.split(separator: " ").map { Int(String($0))! }
var count = 0

for startIndex in 0..<N {
    var sum = 0
    for endIndex in startIndex..<N {
        sum += sequence[endIndex]
        if sum == M {
            count += 1
            break
        } else if sum > M {
            break
        }
    }
}

print(count)
