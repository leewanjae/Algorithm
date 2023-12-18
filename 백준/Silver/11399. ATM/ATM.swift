import Foundation

let n = Int(readLine()!)!

var result = 0
var line = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()


var sum = 0

for item in line {
    sum += item
    result += sum
}

print(result)
