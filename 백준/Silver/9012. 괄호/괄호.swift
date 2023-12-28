import Foundation

let line = Int(readLine()!)!

for _ in 0..<line {
    let ps = readLine()!
    var count = 0
    var isVPS = true
    
    for char in ps {
        if char == "(" {
            count += 1
        } else if char == ")" {
            count -= 1
        }
        
        if count < 0 {
            isVPS = false
            break
        }
    }
    if count != 0 {
        isVPS = false
    }
    
    print(isVPS ? "YES" : "NO")
}
