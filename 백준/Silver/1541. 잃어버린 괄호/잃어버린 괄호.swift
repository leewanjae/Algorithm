// 1541

import Foundation

let line = readLine()!.split(separator: "-").map{String($0)}
var result = 0

for i in line[0].split(separator: "+"){
    result += Int(i)!
}

for i in line[1...] {
    for j in i.split(separator: "+"){
        result -= Int(j)!
    }
}

print(result)
