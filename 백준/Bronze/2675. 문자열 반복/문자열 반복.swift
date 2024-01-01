import Foundation

let line = Int(readLine()!)!

for _ in 0..<line {
    let target = readLine()!.split(separator: " ").map({ String($0) })
    let repeatCount = Int(target[0])!
    let str = target[1]
    
    var result = ""
    for char in str {
        for _ in 0..<repeatCount {
            result += String(char)
        }
    }
    print(result)
}
