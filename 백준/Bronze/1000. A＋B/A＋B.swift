import Foundation 

let arr = readLine()!.split(separator: " ").map{Int($0)!}

let A = arr[0]
let B = arr[1]

print(A+B)
