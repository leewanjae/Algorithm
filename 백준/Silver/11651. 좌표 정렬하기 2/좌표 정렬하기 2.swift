import Foundation

struct XY {
    var x: Int
    var y: Int
}

let line = Int(readLine()!)!
var arr = [XY]()

for _ in 0..<line {
    var xy = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(XY(x: xy[0], y: xy[1]))
}

let sortedArr = arr.sorted { xy1, xy2 in
    if xy1.y == xy2.y {
        return xy1.x < xy2.x
    }
    
    return xy1.y < xy2.y
}

for xy in sortedArr {
    print("\(xy.x) \(xy.y)")
}
