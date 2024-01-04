import Foundation

while let line = readLine() {
    if line == "0" {
        break
    }
    var flag = true
    for index in 0..<line.count/2 {
       
        let startIndex = line.index(line.startIndex, offsetBy: index)
        let endIndex = line.index(line.endIndex, offsetBy: -index - 1)
        
        if line[startIndex] != line[endIndex] {
            print("no")
            flag = false
            break
        }
    }
    
    if flag {
        print("yes")
    }
}
