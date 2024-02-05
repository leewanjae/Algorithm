import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }

let M = line[0]
let N = line[1]

var result = [Int]()

    for item in M...N {
        if item == 2 || item == 3 {
            print(item)
        } else if item > 3 && item % 2 != 0 && item % 3 != 0 {
            var isTarget = true
            let limit = Int(Double(item).squareRoot())
            
            for i in stride(from: 5, through: limit, by: 2) {
                if item % i == 0 {
                    isTarget = false
                    break
                }
            }
            if isTarget {
                print(item)
            }
        }
    }
