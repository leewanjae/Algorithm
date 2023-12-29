import Foundation

let logCount = Int(readLine()!)!

if logCount % 4 == 0 {
   let multiple = logCount / 4
    for _ in 0..<multiple {
        print("long", terminator: " ")
    }
    print("int")
}
