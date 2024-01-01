import Foundation

let word = readLine()!
let num = Int(readLine()!)!

for (index, element) in word.enumerated(){
    if index + 1 == num {
        print(element)
    }
}
