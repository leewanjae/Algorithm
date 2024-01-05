import Foundation

func checkIf(n : Int) -> Bool {
    var n = n
    while n >= 666 {
        if n % 1000 == 666 {
            return true
        }
        n /= 10
    }
    return false
}

let N = Int(readLine()!)!

var now = 666
var count = 1

while count != N {
    now += 1
    if checkIf(n: now) {
        count += 1
    }
}

print(now)
