import Foundation

while let input = readLine(){
    let num = input.split(separator: " ").map { Int(String($0))! }
    
    let (first, second) = (num[0], num[1])
    
    print(first + second)
}
