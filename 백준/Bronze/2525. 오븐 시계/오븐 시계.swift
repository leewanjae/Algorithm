import Foundation

let time = readLine()!.split(separator: " ").map { Int(String($0))! }
var (hour, minute) = (time[0], time[1])
let goTime = Int(readLine()!)!
var totalAddTime = minute + goTime

if 0 <= hour && hour <= 23 && 0 <= minute && minute <= 59 {
    hour += totalAddTime / 60
    minute = totalAddTime % 60

    if minute >= 60 {
        minute %= 60
        hour += 1
    }

    if hour >= 24 {
        hour %= 24
    }
}

print(hour, minute)

