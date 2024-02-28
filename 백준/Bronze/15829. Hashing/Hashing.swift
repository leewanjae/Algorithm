import Foundation

let mod = 1234567891
var result = 0
let L = Int(readLine()!)! // 문자열의 길이
let str = readLine()! // 입력받은 문자열

// 문자열을 순회하며 해시 값을 계산
for (i, char) in str.enumerated() {
    let value = Int(char.asciiValue! - Character("a").asciiValue!) + 1
    var exponent = 1
    
    // r의 i 거듭제곱을 모듈러 연산 적용하여 계산
    for _ in 0..<i {
        exponent = (exponent * 31) % mod
    }
    
    result = (result + (value * exponent) % mod) % mod
}

print(result)
