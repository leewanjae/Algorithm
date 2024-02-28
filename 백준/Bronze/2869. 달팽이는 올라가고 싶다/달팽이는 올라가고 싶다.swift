import Foundation

// 높이 v
// 낮에 A 올라감
// 밤에 B 미끄러짐

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = line[0]
let b = line[1]
var v = line[2]

let progress = a - b
let days = (v-a) / progress // 도착 직전
let totalDays = (v - a) % progress == 0 ? days + 1 : days + 2

print(totalDays)
