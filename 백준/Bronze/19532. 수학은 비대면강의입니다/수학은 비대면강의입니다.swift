import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }

let (a,b,c,d,e,f) = (line[0],line[1],line[2],line[3],line[4],line[5])
var x = 1
var y = 1

for x in -999...999 {
    for y in -999...999 {
        if a * x + b * y == c {
            if d * x + e * y == f {
                print(x,y)
            }
        }
    }
}
