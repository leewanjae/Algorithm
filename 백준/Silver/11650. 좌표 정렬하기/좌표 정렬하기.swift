import Foundation

struct Model {
    var x: Int
    var y: Int
}

let line = Int(readLine()!)!
var result = [Model]()


for _ in 0 ..< line {
    var items = readLine()!.split(separator: " ").map { Int(String($0))! }
    result.append(Model(x: items[0], y: items[1]))
}

result.sort {
    if $0.x == $1.x {
        return $0.y < $1.y
    } else {
        return $0.x < $1.x
    }
    
   
}

result.forEach {
    print("\($0.x) \($0.y)")
}
