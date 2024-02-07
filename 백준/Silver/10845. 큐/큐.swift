import Foundation

class Queue {
    private var queue = [Int]()
    
    
    func push(x: Int) {
        queue.append(x)
    }
    
    func pop() {
        
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.removeFirst())
        }
    }
    
    func size() {
        print(queue.count)
    }
    
    func empty() {
        queue.isEmpty ? print(1) : print(0)
    }
    
    func front() {
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.first!)
        }
    }
    
    func back() {
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.last!)
        }
    }
}

let line = Int(readLine()!)!
let queue = Queue()

for _ in 0..<line {
    let order = readLine()?.split(separator: " ").map { $0 }
    
    let detailOrder = order?[0]
    
    switch detailOrder {
    case "push":
        if let num = Int(order?[1] ?? "") {
            queue.push(x: num)
        }
    case "pop":
        queue.pop()
    case "front":
        queue.front()
    case "back":
        queue.back()
    case "size":
        queue.size()
    case "empty":
        queue.empty()
    default:
        break
    }
}
