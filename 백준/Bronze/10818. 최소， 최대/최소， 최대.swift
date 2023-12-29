import Foundation

let input = Int(readLine()!)!
var maxV = 0
var minV = 0

var number = readLine()!.split(separator: " ").map { Int(String($0))! }
maxV = number.max()!
minV = number.min()!

print(minV, maxV)
