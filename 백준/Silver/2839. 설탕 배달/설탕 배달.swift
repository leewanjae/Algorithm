import Foundation

var sugar = Int(readLine()!)!

var result = 0

while sugar >= 0 {
    if sugar % 5 == 0 {
        result += sugar / 5
        sugar = 0
        break
    } else if sugar >= 3 {
        sugar -= 3
        result += 1
    } else {
        result = -1
        break
    }
}

print(result)
