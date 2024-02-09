import Foundation

let line = Int(readLine()!)!
var numArr = [Int]()
numArr.append(contentsOf: readLine()!.split(separator: " ").map({ Int(String($0))! }))
var count = 0

func isPrime(_ num: Int) -> Bool {
    if num <= 1 {  // 1 이하의 수는 소수가 아님
        return false
    }
    if num <= 3 {  // 2와 3은 소수임
        return true
    }
    if num % 2 == 0 || num % 3 == 0 {  // 2와 3으로 나누어 떨어지면 소수가 아님
        return false
    }
    
    var i = 5
    while i * i <= num {  // i의 제곱이 num 이하일 동안 반복
        if num % i == 0 || num % (i + 2) == 0 {  // i 또는 i+2로 나누어 떨어지면 소수가 아님
            return false
        }
        i += 6
    }
    return true
}

for num in numArr {
    if isPrime(num) {
        count += 1
    }
}

print(count)
