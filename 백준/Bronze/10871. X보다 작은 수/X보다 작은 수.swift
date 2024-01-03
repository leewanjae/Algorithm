import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
var flag = line[1]

let num = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = num.filter { $0 < flag }

a.map { print($0, terminator: " ") }
