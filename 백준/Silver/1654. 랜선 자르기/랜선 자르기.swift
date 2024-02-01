import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }

let haveLine = line[0]
let needLine = line[1]
var haveLineCM = [Int]()

if haveLine >= 1 && haveLine <= 10000 && needLine >= 1 && needLine <= 1000000 && haveLine <= needLine {
    
    for _ in 0..<haveLine {
        haveLineCM.append(Int(readLine()!)!)
    }
    
    var first = 1
    var last = haveLineCM.max()!
    
    var result = 0
    
    while first <= last {
        let middle = (first + last) / 2
        var tmpt = 0
        
        for line in haveLineCM {
            tmpt += line / middle
        }
        
        if tmpt >= needLine {
            if result < middle {
                result = middle
            }
            first = middle + 1
        } else {
            last = middle - 1
        }
    }
    print(result)
}
