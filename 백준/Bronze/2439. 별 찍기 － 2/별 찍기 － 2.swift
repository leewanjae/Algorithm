import Foundation

let line = Int(readLine()!)!

for i in 1...line {
    print(String(repeating: " ", count: line - i), terminator: "")
    print(String(repeating: "*", count: i))
}
