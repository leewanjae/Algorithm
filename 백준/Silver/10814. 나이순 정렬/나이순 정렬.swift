import Foundation

struct Items {
    var age: Int
    var name: String
}

var result = [Items]()
let line = Int(readLine()!)!

for _ in 0..<line {
    var userInfo = readLine()!.split(separator: " ").map { String($0) }
    
    result.append(Items(age: Int(userInfo[0])!, name: userInfo[1]))
}

result.sort {
    $0.age < $1.age
}

result.forEach { print("\($0.age) \($0.name)") }
