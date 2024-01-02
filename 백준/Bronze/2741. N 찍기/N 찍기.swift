import Foundation

let num = Int(readLine()!)!
var count = 0
for _ in 0..<num {
    if count != num {
        count += 1
    }
    print(count)
}
