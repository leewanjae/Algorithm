import Foundation

var N = Int(readLine()!)!
var count = 0

if N != 0 {
    while N > 0 {
        N /= 5
        count += N
    }
    print(count)
} else {
    print(0)
}


