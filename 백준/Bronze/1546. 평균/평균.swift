import Foundation

let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

var MaxV = nums.max()!
var sum: Double = 0.0

for i in 0..<nums.count {
    let modifyN = Double(nums[i]) / Double(MaxV) * 100
    sum += modifyN
}

var result = sum/Double(nums.count)
print(result)
