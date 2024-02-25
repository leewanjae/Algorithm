import Foundation

while true {
    var line = readLine()!.split(separator: " ").map { Int(String($0))! }
    line.sort()
    
    let a = line[0]
    let b = line[1]
    let c = line[2]

    if a == 0 && b == 0 && c == 0{
        break
    }
    
    if a * a + b * b == c * c {
        print("right")
    } else {
        print("wrong")
    }
}
