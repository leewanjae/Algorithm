import Foundation

let opinion = Int(readLine()!)!

if opinion == 0 {
    print(0)
    exit(0)
}

var arr = [Int]()

for _ in 0..<opinion {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var delete = Int(round(Double(arr.count) * 0.15))

var calcArr = arr.dropFirst(delete).dropLast(delete)

var sum = calcArr.reduce(0, +)

var avg = round(Double(sum) / Double(calcArr.count))
var result = Int(avg)
print(result)
