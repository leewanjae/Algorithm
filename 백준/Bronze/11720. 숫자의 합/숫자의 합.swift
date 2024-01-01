import Foundation

let count = Int(readLine()!)!

var result = 0

let nums = readLine()!.map{ Int(String($0))! }

for num in nums {
    result += num
}
print(result)


