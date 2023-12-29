import Foundation

let line = Int(readLine()!)!

for _ in 0..<line {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (first, second) = (input[0], input[1])
    
    print(first + second)
}
