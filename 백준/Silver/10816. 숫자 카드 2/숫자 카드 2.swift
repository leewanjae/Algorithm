import Foundation 

let N = Int(readLine()!)!

var Ncards = readLine()!.split(separator: " ").map { Int(String($0))! }
var cardCounts = [Int: Int]()

for card in Ncards {
    cardCounts[card, default: 0] += 1
}

let M = Int(readLine()!)!
var Mcards = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = [Int]()

for Mcard in Mcards {
    result.append(cardCounts[Mcard, default: 0])
}
print(result.map { String($0) }.joined(separator: " "))
