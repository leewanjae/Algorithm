import Foundation

let k = Int(readLine()!)!
var arr = [Int]()
var sum = 0

for _ in 0..<k {
    var n = Int(readLine()!)!
    
    if n == 0 && !arr.isEmpty {
        sum -= arr.removeLast()
    } else {
        arr.append(n)
        sum += n
    }
}
print(sum)

