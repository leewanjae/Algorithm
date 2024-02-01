import Foundation


// MARK: - Stack 구현
class Stack {
    
    var stack = [Int]()
    var result = [String]()
    
    func push(input: Int) {
        stack.append(input)
        result.append("+")
    }
    
    func pop() {
        stack.removeLast()
        result.append("-")
    }
    
    func stackList() {
        print(stack)
    }
    
    func top() -> Int? {
        return stack.last
    }
    
    func resultCheck() {
        result.forEach { print($0) }
    }
}

// MARK: - 알고리즘 구현부

let line = Int(readLine()!)!
var tmpt = [Int]()

for _ in 0..<line {
    tmpt.append(Int(readLine()!)!)
}

let stack = Stack()
var current = 1
var isPossible = true

for num in tmpt {
    while current <= num {
        stack.push(input: current)
        current += 1
    }
    
    if stack.top() == num {
        stack.pop()
    } else {
        isPossible = false
        break
    }
}

if isPossible {
    stack.resultCheck()
} else {
    print("NO")
}
