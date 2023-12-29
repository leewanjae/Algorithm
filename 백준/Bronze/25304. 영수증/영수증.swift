import Foundation

let totalPrice = Int(readLine()!)!

let line = Int(readLine()!)!
var result = 0
for _ in 0..<line {
    let test = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (thing, price) = (test[0], test[1])
    
    result += thing * price
}

if result == totalPrice {
    print("Yes")
} else {
    print("No")
}
