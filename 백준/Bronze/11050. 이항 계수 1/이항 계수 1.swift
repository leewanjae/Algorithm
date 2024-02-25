import Foundation
// n! / r!(n-r)!
func factorial(num: Int) -> Int {
    if num == 0 {
        return 1
    }
    
    return num * factorial(num: num - 1)
}

let line = readLine()!.split(separator: " ").map { Int(String($0))! }

let N = line[0]
let K = line[1]

let result = factorial(num: N) /  ( factorial(num: K) * factorial(num: N - K) )

print(result)
