import Foundation

struct Stack {
    var stack: [Int] = []
    
    mutating func push(x: Int) {
        stack.append(x)
    }
    
    mutating func pop() -> Int {
        return stack.isEmpty ? -1 : stack.removeLast()
    }
    
    func size() -> Int {
        return stack.count
    }
    
    func empty() -> Int {
        return stack.isEmpty ? 1 : 0
    }
    
    func top() -> Int {
        return stack.last ?? -1
    }
}

let n = Int(readLine()!)!

var stack = Stack()

for _ in 0..<n {
    let line = readLine()!.split(separator: " ")
    switch line[0] {
    case "push" :
        stack.push(x: Int(line[1])!)
    case "pop" :
        print(stack.pop())
    case "size" :
        print(stack.size())
    case "empty" :
        print(stack.empty())
    case "top" :
        print(stack.top())
    default:
        break
    }
}
