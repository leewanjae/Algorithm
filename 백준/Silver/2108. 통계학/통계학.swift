
import Foundation

class 통계 {
    func 산술평균(n: [Int]) {
        let sum = n.reduce(0,+)
        let avg = Double(sum) / Double(n.count)
        print(Int(avg.rounded()))
    }
    
    func 중앙값(n: [Int]) {
        let mid = n.count / 2
        print(n[mid])
    }
    
    func 최빈값(n: [Int]) {
        var dic = [Int: Int]()
        
        for num in n {
            dic[num, default: 0] += 1
        }
        let max = dic.values.max()!
        let modes = dic.filter { $0.value == max }.map { $0.key }.sorted()
        print(modes.count > 1 ? modes[1] : modes[0])
    }
    
    func 범위(n: [Int]) {
       let range = n.last! - n.first!
        print(range)
    }
}

let N = Int(readLine()!)!
var n = [Int]()

for _ in 0..<N {
    n.append(Int(readLine()!)!)
}
n.sort()

let a = 통계()

a.산술평균(n: n)
a.중앙값(n: n)
a.최빈값(n: n)
a.범위(n: n)

