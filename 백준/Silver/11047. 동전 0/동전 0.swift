import Foundation

let line = readLine()!.split(separator: " ").map{Int(String($0))!}
let count = line[0]
var goal = line[1]

var moneyBox = [Int]()
var result = 0

for _ in 0..<count {
    let moneyInPut = Int(readLine()!)!
    moneyBox.append(moneyInPut)
}

moneyBox.sort(by: >)

for item in moneyBox {
    if item <= goal {
        result += (goal / item)
        goal = (goal % item)
        
        if goal == 0 {
            break
        }
    }
}
print(result)
