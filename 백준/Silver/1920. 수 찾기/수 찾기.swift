let N = Int(readLine()!)!
var A = Set(readLine()!.split(separator: " ").map { Int(String($0))! })

let M = Int(readLine()!)!
var X = readLine()!.split(separator: " ").map { Int(String($0))! }
var index = 0

var result = [Int]()

for x in X {
    if A.contains(x) {
        result.append(1)
    } else {
        result.append(0)
    }
}

result.forEach { print($0) }
