import Foundation

let line = readLine()!.split(separator: " ").map({ Int(String($0))! })
let N = line[0]
let M = line[1]
let numArr = readLine()!.split(separator: " ").map({ Int(String($0))! })
var result = 0

for i in 0..<N-2 {
    for j in i+1..<N-1 {
        for k in j+1..<N {
            let sum = numArr[i] + numArr[j] + numArr[k]
            
            if sum <= M && sum > result {
                result = sum
            }
        }
    }
}

print(result)
