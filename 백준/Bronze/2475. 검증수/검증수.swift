import Foundation

let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }

var sum = numbers.reduce(0) { partialResult, item in
    var a = item * item
    return partialResult + a
}

var result = sum % 10

print(result)
