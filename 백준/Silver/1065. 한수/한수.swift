import Foundation

// 한수 = 정수 x의 각 자리가 등차수열
// 1 <= 한수 <= N의 개수

let n = Int(readLine()!)!

if n < 100 {
    print(n)
} else {
    var count = 99
    
    for i in 100...n {
        let first = i / 100
        let second = (i % 100) / 10
        let third = (i % 100) % 10
        
        if first - second == second - third {
            count += 1
        }
    }
    print(count)
}

