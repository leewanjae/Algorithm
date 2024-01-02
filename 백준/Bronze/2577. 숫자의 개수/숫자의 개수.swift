import Foundation

let firstN = Int(readLine()!)!
let secondN = Int(readLine()!)!
let thridN = Int(readLine()!)!

var numArr = [Int](repeating: 0, count: 10)

let multiple = firstN * secondN * thridN

for mult in String(multiple) {
    numArr[Int(String(mult))!] += 1
}

numArr.map { print($0) }
