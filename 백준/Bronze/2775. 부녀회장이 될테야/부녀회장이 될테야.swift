import Foundation

// 한층 아래 1~b호까지 사람들의 수의 합만큼 사람들을 데려와 살아야한다.
// k층, n호
// 아파트는 0층부터, 각층에는 1호부터
// 0층의 i호에는 i명이 산다.


let T = Int(readLine()!)!

for i in 0..<T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    var apartment = Array(repeating: Array(repeating: 0, count: n), count: k + 1)
    
    for i in 1...n {
        apartment[0][i-1] = i
    }
    
    for floor in 1...k {
        for room in 1...n {
            for prevRoom in 1...room {
                apartment[floor][room-1] += apartment[floor-1][prevRoom-1]
            }
        }
    }
  print(apartment[k][n-1])
}
