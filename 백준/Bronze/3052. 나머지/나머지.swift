import Foundation

var remainArr = [Int]()

for _ in 1...10 {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for number in numbers {
        var remain = number % 42
        remainArr.append(remain)
    }
}

let uniqueRemain = Set(remainArr)
print(uniqueRemain.count)
