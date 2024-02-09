import Foundation

let num = readLine()!.split(separator: " ").map { Int(String($0))! }

let a = num[0]
let b = num[1]

// MARK: - 최대 공약수
func gcd(a: Int, b: Int) -> Int {
    if b == 0 {
        return a // 재귀 호출로 b가 0까지 될때 값으로 최대 공약수이다.
    }
    return gcd(a: b, b: a % b) // 재귀를 통해 b가 0이 될 때까지 순환
}
let gcdN = gcd(a: a, b: b)

// MARK: - 최소 공배수
func lcm(a: Int, b: Int) -> Int {
    return a * b / gcd(a: a, b: b)
}

let lcmN = lcm(a: a, b: b) // a * b를 최대공약수로 나누면 구할 수 있다.

print(gcdN, lcmN)
