import Foundation

let num = readLine()!.split(separator: " ").map({Int(String($0))!})
let ascendArr = [1,2,3,4,5,6,7,8]
let descendArr = [8,7,6,5,4,3,2,1]

if num == ascendArr {
    print("ascending")
} else if num == descendArr {
    print("descending")
} else {
    print("mixed")
}


