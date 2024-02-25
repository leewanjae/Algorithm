import Foundation

class Deque {
    var deque = [Int]()
    
    func push_front(X: Int) {
        deque.insert(X, at: 0)
    }
    
    func push_back(X: Int) {
        deque.append(X)
    }
    
    func pop_front() -> Int {
        if deque.isEmpty {
            return -1
        } else {
            return deque.removeFirst()
        }
    }
    
    func pop_back() -> Int {
        if deque.isEmpty {
            return -1
        } else {
            return deque.removeLast()
        }
    }
    
    func size() -> Int {
        return deque.count
    }
    
    func empty() -> Int {
        if deque.isEmpty {
            return 1
        } else {
            return 0
        }
    }
    
    func front() -> Int {
        return deque.first ?? -1
    }
    
    func back() -> Int {
        return deque.last ?? -1
    }
}

let line = Int(readLine()!)!
let deque = Deque()

for _ in 0..<line {
    var order = readLine()!.split(separator: " ").map { String($0) }
    
    switch order[0] {
    case "push_back":
        deque.push_back(X: Int(order[1])!)
    case "push_front":
        deque.push_front(X: Int(order[1])!)
    case "front":
        print(deque.front())
    case "back":
        print(deque.back())
    case "size":
        print(deque.size())
    case "empty":
        print(deque.empty())
    case "pop_back":
        print(deque.pop_back())
    case "pop_front":
        print(deque.pop_front())
    default:
        break
    }
}
